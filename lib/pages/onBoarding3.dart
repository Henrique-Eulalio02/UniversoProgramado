import 'package:flutter/material.dart';

import 'onBoarding4.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                  Image.asset(
                    'assets/ImagemLogoTrabalho.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Universo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'Programado',
                          style: TextStyle(
                            color: Color.fromRGBO(101, 31, 255, 1),
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0), // Ajuste conforme necessário
                            child: Text(
                              "Para conseguir o combustível para a sua nave você deve responder as perguntas que irão aparecer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Image.asset(
                                'assets/onBoarding3Asset.png',
                                width: 250,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: SizedBox(height: 16),
                          ),
                          Center(
                            child: SizedBox(
                              height: 70.0,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OnBoarding4()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  backgroundColor:
                                      Color.fromRGBO(101, 31, 255, 1),
                                ),
                                child: Text(
                                  "Avançar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
