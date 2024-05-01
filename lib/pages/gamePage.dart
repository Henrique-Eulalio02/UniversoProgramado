import 'package:flutter/material.dart';
import 'package:projeto/pages/congratsPage.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  String? _selectedOption;

  void _selectOption(String option) {
    setState(() {
      _selectedOption = option == _selectedOption ? null : option;
    });
  }

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.close),
                        color: Color.fromRGBO(51, 50, 50, 1),
                        onPressed: () {},
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromRGBO(201, 39, 39, 1),
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Color.fromRGBO(201, 39, 39, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      'Assinale a alternativa correta!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2, // Defina o número máximo de linhas
                      overflow: TextOverflow
                          .ellipsis, // Adicione um efeito de elipse quando o texto exceder as linhas definidas
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/et1.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 8.0),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'for(int i = 0; i > 10; i++);',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                              maxLines: 2, // Defina o número máximo de linhas
                              overflow: TextOverflow
                                  .ellipsis, // Adicione um efeito de elipse quando o texto exceder as linhas definidas
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildOptionButton("Verdadeiro"),
              SizedBox(height: 15),
              buildOptionButton("Falso"),
              SizedBox(height: 16),
              buildOptionButton("Indefinido"),
              SizedBox(height: 16),
              buildOptionButton("Erro de Sintaxe"),
              SizedBox(height: 35),
              SizedBox(
                height: 70.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CongratsPage()),
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
                    "Checar",
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

  Widget buildOptionButton(String option) {
    return SizedBox(
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          _selectOption(option);
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Color.fromRGBO(88, 88, 88, 1)),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (option == _selectedOption) {
                return Color.fromRGBO(101, 31, 255, 1);
              }
              return Color.fromRGBO(30, 30, 30, 1);
            },
          ),
        ),
        child: Text(
          option,
          style: TextStyle(
            color: option == _selectedOption ? Colors.white : Color.fromRGBO(88, 88, 88, 1),
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
