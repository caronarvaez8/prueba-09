import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/page/characterslist.dart';
import '../provider/characters_notifier.dart';

class CharactersH extends StatefulWidget {
  @override
  _CharactersHState createState() => _CharactersHState();

}

class _CharactersHState extends State<CharactersH> with TickerProviderStateMixin {

  Widget build(BuildContext context) {

    CharacterNotifier characterNotifier = Provider.of<CharacterNotifier>(context);
    double heightApp = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Alfred", textAlign: TextAlign.left,),
          backgroundColor: Color(0xff1c1e3a),
          elevation: 0
        ),
        backgroundColor: Color(0xFFFCF6F6),
        body: SingleChildScrollView(
            child: Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: (heightApp * 0.07)),
                                child: const Text("¿Quieres saber que personajes tenemos?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans_SemiBold",
                                        fontSize: 18)),
                              ),
                              Container(
                                  padding: EdgeInsets.only(top: (heightApp * 0.06)),
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xff1c1e3a)),),
                                    child: const Text("Buscar",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "OpenSans_SemiBold",
                                            fontSize: 18)),
                                    onPressed: () async {
                                      characterNotifier.listCharacter();
                                    },
                                  )
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top:220),
                      child: Row(
                          children: <Widget>[
                            Expanded(
                                child: CharacterList())
                          ])
                  ),
                ])
        )
    );
  }
}
