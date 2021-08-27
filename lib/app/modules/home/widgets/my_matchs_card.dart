import 'package:flutter/material.dart';

class MyMatchs extends StatelessWidget {
  const MyMatchs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(5),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage('assets/img/woman.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
