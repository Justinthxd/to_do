import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/data/models/note.dart';
import 'package:to_do/provider/provider.dart';
import 'package:to_do/widgets/alerts.dart';

import '../widgets/note.dart';
import '../widgets/side_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final main = Provider.of<MainProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
        centerTitle: false,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white38,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              addNote(context);
            },
            icon: const Icon(
              Icons.add_rounded,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Row(
          children: [
            // SideBar - - - - - - - - - - - - - - - - - - - - - //
            sideBar(),
            // Body - - - - - - - - - - - - - - - - - - - - - //
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 25, 25, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Wrap(
                  children: [
                    for (int i = 0; i < main.notes.length; i++)
                      MyNote(note: main.notes[i]),
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
