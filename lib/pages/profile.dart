import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromRGBO(51, 50, 50, 1),
                          width: 3, // Defina a largura da borda conforme desejado
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "H",
                          style: TextStyle(
                            color: Color.fromRGBO(101, 31, 255, 1),
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1),),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(101, 31, 255, 1),),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
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
                    backgroundColor: Color.fromRGBO(101, 31, 255, 1),
                  ),
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
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
