import 'package:flutter/material.dart';

class OnBoarding7 extends StatefulWidget {
  const OnBoarding7({Key? key}) : super(key: key);

  @override
  State<OnBoarding7> createState() => _OnBoarding7State();
}

class _OnBoarding7State extends State<OnBoarding7> {
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
                            color: Colors.purple,
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
                                top: 30.0), // Ajuste conforme necessário
                            child: Text(
                              "Muito obrigado pela sua atenção, tripulante! Te vejo nessa jornada intergaláctica do aprendizado",
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
                                'assets/et3.png',
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
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
                                onPressed: () {},
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
