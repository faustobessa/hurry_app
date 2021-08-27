import 'package:flutter_modular/flutter_modular.dart';
import 'package:hurry/app/modules/eventos/eventos_store.dart';
import 'package:flutter/material.dart';

class EventosPage extends StatefulWidget {
  final String title;
  const EventosPage({Key? key, this.title = 'EventosPage'}) : super(key: key);
  @override
  EventosPageState createState() => EventosPageState();
}

class EventosPageState extends State<EventosPage> {
  final EventosStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Marshmello',
          style: TextStyle(color: Colors.orange),
        ),
        iconTheme: IconThemeData(color: Colors.orange),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: sh,
        child: Stack(
          children: [
            Container(
              height: sh * .3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/eletronic.jpg'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                height: sh * .6,
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.orange.shade400,
                    Colors.orange.shade600,
                    Colors.orange.shade700,
                    Colors.orange.shade900,
                  ]),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Mashmello',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 3,
                      child: Center(
                        child: Container(
                          width: sw * .7,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '21/08/2020 - 20:00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 56,
                      minWidth: sw * .7,
                      color: Colors.white,
                      elevation: 0,
                      child: Text(
                        'Line Up',
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 3,
                            style: BorderStyle.solid,
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 56,
                      minWidth: sw * .7,
                      color: Colors.white,
                      elevation: 0,
                      child: Text(
                        'Drinks',
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 3,
                            style: BorderStyle.solid,
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 56,
                      minWidth: sw * .7,
                      color: Colors.white,
                      elevation: 0,
                      child: Text(
                        'Food',
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 3,
                            style: BorderStyle.solid,
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 56,
                      minWidth: sw * .7,
                      color: Colors.white,
                      elevation: 0,
                      child: Text(
                        'Local',
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 3,
                            style: BorderStyle.solid,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
