import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hurry/app/modules/home/home_store.dart';
import 'package:hurry/app/modules/home/widgets/card_indicated.dart';
import 'package:hurry/app/modules/home/widgets/card_story.dart';
import 'package:hurry/app/modules/home/widgets/my_events.dart';
import 'package:hurry/app/modules/home/widgets/my_matchs_card.dart';
import 'package:hurry/app/modules/home/widgets/next_events.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Raphael Raasch',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Modular.to.pushReplacementNamed('/');
            },
            child: Icon(
              Icons.exit_to_app,
              color: Colors.orange,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardStory(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Proximos Eventos',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              NextEvents(
                onTap: () {
                  Modular.to.pushNamed('/eventos');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Indicados',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Indicated(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Meus Matchs',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              MyMatchs(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Meus Eventos',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              MyEvents(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.orange,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat,
                color: Colors.orange,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.panorama_wide_angle_select_outlined,
                color: Colors.orange,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
