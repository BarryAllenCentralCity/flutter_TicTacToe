import 'package:flutter/material.dart';
import 'package:flutter14_tictactoe/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/tictactoe.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'जीरो कट्टस ',
                  textScaleFactor: 4.0,
                  style: TextStyle(color: Colors.amber),
                ),
                SizedBox(height: 100,),
                Container(
                  color: Colors.black,
                  child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).push(TicTacToe.route()),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                    "Play",
                    textScaleFactor: 1.5,
                  ),)
                ),)
              ],
            ),
          ),
        ));
  }
}
