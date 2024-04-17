import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 300,
                    alignment: Alignment.bottomRight, // menambahkan alignment
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                        colors: <Color>[
                          Color(0xffDF98FA),
                          Color(0xff9055FF),
                        ],
                      ),
                      color: const Color(0xFFDF98FA),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Container(
                      width: 265,
                      height: 162,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Quran.png'),
                          // remove fit
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          "Al-Fatihah",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const Text(
                          "The Opening",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: const Divider(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "MECCAN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(90, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "7 VERSE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 214,
                          height: 48,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/bismillah.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
