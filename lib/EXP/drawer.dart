import 'package:flutter/material.dart';
import 'package:teste/EXP/exp2.dart';
import 'package:teste/main.dart';

import 'exp1.dart';
import 'exp3.dart';

class Drawer_A extends StatelessWidget {
  const Drawer_A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(""), fit: BoxFit.fill),
                ),
              ),
              const Text(
                'Ami Med Lemine',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const Text(
                'amibarka@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ]),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outline_blank),
          title: const Text(
            "TP1",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => const Exp1()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outline_blank),
          title: const Text(
            "TP2",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => const Exp2()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outline_blank),
          title: const Text(
            "TP3",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => const Exp3()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            "sortie",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => const MyApp()));
          },
        ),
      ]),
    );
  }
}
