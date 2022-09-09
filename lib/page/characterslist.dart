import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/page/details.dart';
import '../provider/characters_notifier.dart';

class CharacterList extends StatefulWidget {

  _CharacterListState createState() => _CharacterListState();

}
class _CharacterListState extends State<CharacterList> {

  Widget build(BuildContext context) {
    CharacterNotifier characterNotifier = Provider.of<CharacterNotifier>(context);
    return   ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const PageScrollPhysics(),
      shrinkWrap: true,
      itemCount: characterNotifier.charactersList.length,
      itemBuilder: (BuildContext context, int index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: InkWell(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    DetaiList(id: characterNotifier.charactersList[index].id, image: characterNotifier.charactersList[index].image,
                    name: characterNotifier.charactersList[index].name, gender: characterNotifier.charactersList[index].gender,
                    origin: characterNotifier.charactersList[index].origin, location: characterNotifier.charactersList[index].location)),);
                },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               Expanded(child:
               Consumer<CharacterNotifier>(
                   builder: (_, notifier, __) =>
                       Image.network('${notifier.charactersList[index].image}')
               ),
               ),
                Expanded(
                 child:Padding (
                   padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Consumer<CharacterNotifier>(
                          builder: (_, notifier, __) => Text(
                            "\n${notifier.charactersList[index].name}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "OpenSans"),
                          ),
                        ),
                        Consumer<CharacterNotifier>(
                          builder: (_, notifier, __) => Text(
                            "\n${notifier.charactersList[index].status}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "OpenSans"),
                          ),
                        ),
                        Consumer<CharacterNotifier>(
                          builder: (_, notifier, __) => Text(
                            "\n${notifier.charactersList[index].species}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "OpenSans"),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
               
              ],
            ),),
          )
      ),
    );
  }
}