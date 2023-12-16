import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_task_airplane/homepage.dart';
import 'package:second_task_airplane/ticket.dart';
import 'package:second_task_airplane/history.dart';
import 'package:second_task_airplane/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const Ticket(),
    const History(),
    const Settings(),
  ];
  final custom_blue = const Color.fromRGBO(25, 31, 50, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.shifting,
        iconSize: 28,
        fixedColor: custom_blue,
        selectedLabelStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.house_alt,
                color: Colors.black,
                size: 25,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket_outlined,
                color: Colors.black,
              ),
              label: 'Ticket'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.document_scanner_outlined,
                color: Colors.black,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
                color: Colors.black,
              ),
              label: 'Settings'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
