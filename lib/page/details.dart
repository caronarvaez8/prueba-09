import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/characters_notifier.dart';

class DetaiList extends StatefulWidget {

  late final String? id, name, gender, origin, location, image;
  DetaiList({Key? key, this.id, this.name, this.gender, this.origin,
    this.location, this.image}) : super(key: key);
  _DetaiListState createState() => _DetaiListState(id, name, gender, origin, location, image);
}


class _DetaiListState extends State<DetaiList> {

  String? id, name, gender, origin, location, image;
  _DetaiListState(this.id, this.name, this.gender, this.origin, this.location, this.image);

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: const Text("Alfred", textAlign: TextAlign.left,),
            backgroundColor: const Color(0xff1c1e3a),
            elevation: 0
        ),
        backgroundColor: const Color(0xFFFCF6F6),
        body:SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 40,),
            Expanded(
            child:Container (
                margin: const EdgeInsets.all(20),
                color: Colors.white,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15,),
                Container(child: const Text("Detalle", textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: "OpenSans"))),
                const SizedBox(height: 40,),
                Container(child: Image.network('${image}'),),
                const SizedBox(height: 30,),
                Container(
                    child: Text("${name}", textAlign: TextAlign.left, style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: "OpenSans"))),
                const SizedBox(height: 20,),
                Container(
                    padding: const EdgeInsets.only(left: 40),
                    alignment: Alignment.topLeft,
                    child: Text("- ${origin}",style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "OpenSans"))),
                Container(
                    padding: const EdgeInsets.only(left: 40),
                    alignment: Alignment.topLeft,
                    child: Text("- ${gender}", style: const TextStyle(
                        fontSize: 18,
                        fontFamily: "OpenSans"))),
                Container(
                    padding: const EdgeInsets.only(left: 40),
                    alignment: Alignment.topLeft,
                    child: Text("- ${location}", style: const TextStyle(
                        fontSize: 18,
                        fontFamily: "OpenSans"))),
                const SizedBox(height: 20,),
              ]
            )))
                //SizedBox(height: 10),

              ],
            )
        ))
      /*ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const PageScrollPhysics(),
      shrinkWrap: true,
      itemCount: id?.length,
      itemBuilder: (BuildContext context, int index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                //Text(id.name.toString()),
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
                            "\n${notifier.charactersList[index].gender}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "OpenSans"),
                          ),
                        ),
                        Consumer<CharacterNotifier>(
                          builder: (_, notifier, __) => Text(
                            "\n${notifier.charactersList[index].origin}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "OpenSans"),
                          ),
                        ),
                        Consumer<CharacterNotifier>(
                          builder: (_, notifier, __) => Text(
                            "\n${notifier.charactersList[index].location}",
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
            ),
          )
      ),
    )*/;
  }
}