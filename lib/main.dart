import 'package:flutter/material.dart';

void main() => runApp(const TestApp());

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestS(),
    );
  }
}

class TestS extends StatefulWidget {
  const TestS({super.key});

  @override
  State<TestS> createState() => _TestSState();
}

class _TestSState extends State<TestS> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 118.0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 85, left: 75),
            height: 110,
            width: 110,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(232, 236, 13, 106),
                  Color.fromARGB(183, 145, 159, 52),
                ])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 85, left: 195),
            height: 110,
            width: 110,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(123, 6, 86, 8),
                  Color.fromARGB(232, 236, 13, 106),
                ])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200, left: 75),
            height: 110,
            width: 110,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(232, 6, 65, 86),
                  Color.fromARGB(232, 236, 13, 106),
                ])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200, left: 195),
            height: 110,
            width: 110,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(232, 6, 65, 86),
                  Color.fromARGB(232, 236, 13, 106),
                ])),
          ),
          const Center(
            child: Text(
              "Trafic.co ltd",
              style: TextStyle(
                  fontFamily: 'cursive',
                  color: Color.fromARGB(232, 14, 215, 176),
                  decoration: TextDecoration.none),
            ),
          ),
          Positioned.fill(
            bottom: 294,
            left: 15,
            child: isLoading
                ? Container(
                    color: Colors.black.withOpacity(0.7),
                    child: const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(255, 75, 56, 77),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
