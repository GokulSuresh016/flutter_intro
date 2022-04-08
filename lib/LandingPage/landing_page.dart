import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  List<Widget> pageChildren() {
    return <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Flutter Developers",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "We are the developres have a strong experience in flutter",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                "Our special offer",
                style: TextStyle(color: Colors.red),
              ),
            ),
          )
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(),
          );
        } else {
          return Column(
            children: pageChildren(),
          );
        }
      },
    );
  }
}
