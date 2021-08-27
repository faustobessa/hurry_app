import 'package:flutter/material.dart';

class Indicated extends StatelessWidget {
  const Indicated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          width: 150,
          padding: EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage('assets/img/rapper.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
