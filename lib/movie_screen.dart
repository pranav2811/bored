import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
          // ignore: prefer_const_constructors
          image: NetworkImage(
              "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"),
          // fit: BoxFit.cover,
          width: double.infinity,
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.5,
          maxChildSize: 1.0,
          builder: (BuildContext context, ScrollController scrollController) {
            return Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: Container(
                        height: 400,
                        width: 500,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(38, 33, 48, 0.97),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30.0, right: 80),
                              child: Text(
                                'Avengers:Endgame ',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 80),
                              child: Row(
                                children: const [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://media-exp1.licdn.com/dms/image/C4E0BAQEVb0ZISWk8vQ/company-logo_200_200/0/1519896425167?e=2147483647&v=beta&t=xztAGLJ8SUh-lHaDSK-a3cxYCfSYAy8wrPg3jTx15W8'),
                                      height: 90,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://yt3.ggpht.com/3b9SS-66t6V_AfGgaiTgaylOvn6cB8GUBnGV0Q2DMn9PWn6MIzzseiMz-d0UpGrQdhEMl3AwT38=s900-c-k-c0x00ffffff-no-rj'),
                                      height: 90,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 20),
                              child: Row(
                                children: const [
                                  Text(
                                    'Runtime:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    '3h 2m',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 20),
                              child: Row(
                                children: const [
                                  Text(
                                    'Director:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Anthony Russo',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 34.0),
                              child: Text(
                                'Joe Russo',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 20),
                              child: Row(
                                children: const [
                                  Text(
                                    'Producer:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Kevin Fiege',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ]),
    );
  }
}