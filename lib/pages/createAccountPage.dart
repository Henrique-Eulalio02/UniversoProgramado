import 'package:flutter/material.dart';
import 'package:projeto/pages/loginPage.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/ImagemLogoTrabalho.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8.0),
                  Column(
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      '< Voltar para o Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Vamos criar a sua conta!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, // Adicionando o negrito
                    ),
                  ),
                ],
              ),
             SizedBox(height: 20),
TextFormField(
  obscureText: true,
  keyboardType: TextInputType.text,
  style: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
  decoration: InputDecoration(
    labelText: "Nome",
    labelStyle: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
    fillColor: Color(0xFF333232),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),
SizedBox(height: 20),
             TextFormField(
  obscureText: true,
  keyboardType: TextInputType.emailAddress,
  style: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
  decoration: InputDecoration(
    labelText: "Email",
    labelStyle: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
    fillColor: Color(0xFF333232),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),
SizedBox(height: 20),
             TextFormField(
  obscureText: true,
  keyboardType: TextInputType.visiblePassword,
  style: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
  decoration: InputDecoration(
    labelText: "Senha",
    labelStyle: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
    fillColor: Color(0xFF333232),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),
             SizedBox(height: 20),
             TextFormField(
  obscureText: true,
  keyboardType: TextInputType.visiblePassword,
  style: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
  decoration: InputDecoration(
    labelText: "Confirmar senha",
    labelStyle: TextStyle(color: Color.fromRGBO(121, 121, 121, 1), fontSize: 16),
    fillColor: Color(0xFF333232),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),
              SizedBox(height: 35),
              SizedBox(
                height: 70.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    backgroundColor: Color.fromRGBO(101, 31, 255, 1),
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Ou entre Via',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 70.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      backgroundColor: Color(0xF333232)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_mobiledata,
                        color: Color.fromRGBO(121, 121, 121, 1),
                        size: 40,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Google",
                        style: TextStyle(
                          color: Color.fromRGBO(121, 121, 121, 1),
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
