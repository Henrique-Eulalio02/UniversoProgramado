import 'package:flutter/material.dart';

import 'onBoarding7.dart';

class OnBoarding6 extends StatefulWidget {
  const OnBoarding6({Key? key}) : super(key: key);

  @override
  State<OnBoarding6> createState() => _OnBoarding6State();
}

class _OnBoarding6State extends State<OnBoarding6> {
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
                                top: 30.0,
                                bottom: 30), // Ajuste conforme necessário
                            child: Text(
                              "Durante a sua jornada você irá desbloquear várias conquistas",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 30.0, bottom: 30),
                              child: Image.asset(
                                'assets/onBoarding6Asset.png',
                                width: 300,
                                height: 165,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 30.0), // Ajuste conforme necessário
                            child: Text(
                              "Acesse a parte de conquistas no menu para ver seu reconhecimento como tripulante",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
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
                                        builder: (context) => OnBoarding7()),
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
