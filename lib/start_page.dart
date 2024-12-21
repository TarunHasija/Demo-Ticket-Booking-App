import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});
  // ignore: non_constant_identifier_names
  final custom_blue = const Color.fromRGBO(25, 31, 50, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/plane.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore Exciting \n   Destinations",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 41.5,
                        color: Color.fromRGBO(25, 31, 50, 1)),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                "its a long established fact that a reader will\nbe distracted by the readable content of a\n       page when looking at its layout",
                style: TextStyle(fontSize: 15.5, color: Colors.grey[700]),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'bottom');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 31, 50, 1),
                  fixedSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}





