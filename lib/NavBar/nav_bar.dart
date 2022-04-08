import 'dart:ui';

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Test flutter web",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: <Widget>[
          const Text(
            "Test flutter web",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
