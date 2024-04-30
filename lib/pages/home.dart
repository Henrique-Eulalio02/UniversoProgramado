import 'package:flutter/material.dart';
import 'package:projeto/pages/badges.dart';
import 'package:projeto/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1; // Iniciando na tela HomeScreen
  int _faseAtual = 0; // Para controlar a fase atual do usuário
  int _nextLevel = 0;

  // Função para mudar o nível
  void _changeLevel(int level) {
    setState(() {
      _faseAtual = level;
      _nextLevel = level + 1;
    });

     print('Fase atualizada: $_faseAtual');
  }

  @override
  Widget build(BuildContext context) {
    // Lista de telas com as variáveis de instância corrigidas
    final List<Widget> _screens = [
      Badges(),
      HomeScreen(
        faseAtual: _faseAtual,
        changeLevel: _changeLevel,
        nextLevel: _nextLevel,
      ),
      Profile(),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1E1E1E),
        selectedItemColor: Color.fromRGBO(101, 31, 255, 1),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Badges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final int faseAtual; // Variável faseAtual como parâmetro
  final void Function(int) changeLevel; // Função para mudar o nível
  final int nextLevel;

  HomeScreen({required this.faseAtual, required this.changeLevel, required this.nextLevel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Lógica de Programação',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0),
            // Barra de progresso
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  width: 80.0,
                  height: 30.0,
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  color:
                      index < faseAtual ? Color(0xFF651FFF) : Color(0xFF333232),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Imagens
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/planeta1.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Botões das fases
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () => changeLevel(1),
                    child: Text('1'),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(70, 70), // Tamanho dos botões
                      backgroundColor: faseAtual >= 1
                          ? Color.fromRGBO(101, 31, 255, 1)
                          : Color.fromRGBO(101, 31, 255, 0.5),
                      // Adicione a borda se for a fase atual
                    side: nextLevel == 1
                          ? BorderSide(
                              color: Color.fromRGBO(0, 201, 169, 1),
                              width: 3,
                            )
                          : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () => changeLevel(2),
                    child: Text('2'),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(70, 70),
                      backgroundColor: faseAtual >= 2
                          ? Color.fromRGBO(101, 31, 255, 1)
                          : Color.fromRGBO(101, 31, 255, 0.5),
                      // Adicione a borda se for a fase atual
                      side: nextLevel == 2
                          ? BorderSide(
                              color: Color.fromRGBO(0, 201, 169, 1),
                              width: 3,
                            )
                          : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () => changeLevel(3),
                    child: Text('3'),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(70, 70),
                      backgroundColor: faseAtual >= 3
                          ? Color.fromRGBO(101, 31, 255, 1)
                          : Color.fromRGBO(101, 31, 255, 0.5),
                      // Adicione a borda se for a fase atual
                     side: nextLevel == 3
                          ? BorderSide(
                              color: Color.fromRGBO(0, 201, 169, 1),
                              width: 3,
                            )
                          : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () => changeLevel(4),
                    child: Text('4'),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(70, 70),
                      backgroundColor: faseAtual >= 4
                          ? Color.fromRGBO(101, 31, 255, 1)
                          : Color.fromRGBO(101, 31, 255, 0.5),
                      // Adicione a borda se for a fase atual
                      side: nextLevel == 4
                          ? BorderSide(
                              color: Color.fromRGBO(0, 201, 169, 1),
                              width: 3,
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/planeta2.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}