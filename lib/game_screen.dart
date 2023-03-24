import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  static route({bool fullscreenDialog = true}) => MaterialPageRoute(
    builder: (context) => const TicTacToe(),
  );

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  final List<List<String>> _board = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];
  String _turn = "X";
  String _result = "Check Result";

  void _play(int row, int col) {
    setState(() {
      _board[row][col] = _turn;
      if (_turn == "X") {
        _turn = "O";
      } else {
        _turn = "X";
      }
    });
  }

  Widget _buildCell(int row, int col) {
    return GestureDetector(
      onTap: () {
        _play(row, col);
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            _board[row][col],
            style: const TextStyle(fontSize: 48),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(int row) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCell(row, 0),
          _buildCell(row, 1),
          _buildCell(row, 2),
        ],
      ),
    );
  }

  checkWinner() {
    if(
    _board[0][0] == 'X' && _board[0][1] == 'X' && _board[0][2] == 'X'
    ){
      setState(() {
        _board[0][0] == 'X'; _board[0][1] == 'X'; _board[0][2] == 'X';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[1][0] == 'X' && _board[1][1] == 'X' && _board[1][2] == 'X'
    ){
      setState(() {
        _board[1][0] == 'X̶'; _board[1][1] == 'X̶'; _board[1][2] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[2][0] == 'X' && _board[2][1] == 'X' && _board[2][2] == 'X'
    ){
      setState(() {
        _board[2][0] == 'X̶'; _board[2][1] == 'X̶'; _board[2][2] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[0][0] == 'X' && _board[1][0] == 'X' && _board[2][0] == 'X'
    ){
      setState(() {
        _board[0][0] == 'X̶'; _board[1][0] == 'X̶'; _board[2][0] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[1][0] == 'X' && _board[1][1] == 'X' && _board[1][2] == 'X'
    ){
      setState(() {
        _board[1][0] == 'X̶'; _board[1][1] == 'X̶'; _board[2][1] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[2][0] == 'X' && _board[2][1] == 'X' && _board[2][2] == 'X'
    ){
      setState(() {
        _board[2][0] == 'X̶'; _board[2][1] == 'X̶'; _board[2][2] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[0][0] == 'X' && _board[1][1] == 'X' && _board[2][2] == 'X'
    ){
      setState(() {
        _board[0][0] == 'X̶'; _board[1][1] == 'X̶'; _board[2][2] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[2][0] == 'X' && _board[1][1] == 'X' && _board[0][2] == 'X'
    ){
      setState(() {
        _board[2][0] == 'X̶'; _board[1][1] == 'X̶'; _board[0][2] == 'X̶';
        _result = "X Wins!!! Please Clear";
      });
    }if(
    _board[0][0] == 'O' && _board[0][1] == 'O' && _board[0][2] == 'O'
    ){
      setState(() {
        _board[0][0] == 'O'; _board[0][1] == 'O'; _board[0][2] == 'O';
        _result = "O Wins!!!Please Clear";
      });
    }if(
    _board[1][0] == 'O' && _board[1][1] == 'O' && _board[1][2] == 'O'
    ){
      setState(() {
        _board[1][0] == 'X̶'; _board[1][1] == 'X̶'; _board[1][2] == 'X̶';
        _result = "O Wins!!!Please Clear";
      });
    }if(
    _board[2][0] == 'O' && _board[2][1] == 'O' && _board[2][2] == 'O'
    ){
      setState(() {
        _board[2][0] == 'X̶'; _board[2][1] == 'X̶'; _board[2][2] == 'X̶';
        _result = "O Wins!!!Please Clear";
      });
    }if(
    _board[0][0] == 'O' && _board[1][0] == 'O' && _board[2][0] == 'O'
    ){
      setState(() {
        _board[0][0] == 'X̶'; _board[1][0] == 'X̶'; _board[2][0] == 'X̶';
        _result = "O Wins!!!Please Clear";
      });
    }if(
    _board[1][0] == 'O' && _board[1][1] == 'O' && _board[1][2] == 'O'
    ){
      setState(() {
        _board[1][0] == 'X̶'; _board[1][1] == 'X̶'; _board[1][2] == 'X̶';
        _result = "O Wins!!!Please Clear";
      });
    }if(
    _board[2][0] == 'O' && _board[2][1] == 'O' && _board[2][2] == 'O'
    ){
      setState(() {
        _board[2][0] == 'X̶'; _board[2][1] == 'X̶'; _board[2][2] == 'X̶';
        _result = "O Wins!!!Please Clear";
      });
    }
    if(
    _board[0][0] == 'O' && _board[1][1] == 'O' && _board[2][2] == 'O'
    ){
      setState(() {
        _board[0][0] == 'O'; _board[1][1] == 'O'; _board[2][2] == 'O';
        _result = "O Wins!!! Please Clear";
      });
    }if(
    _board[2][0] == 'O' && _board[1][1] == 'O' && _board[0][2] == 'O'
    ){
      setState(() {
        _board[2][0] == 'O'; _board[1][1] == 'O'; _board[0][2] == 'O';
        _result = "O Wins!!! Please Clear";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('जीरो कट्टस ', textScaleFactor: 1.5, style: TextStyle(color: Colors.black45), textAlign: TextAlign.center,),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        leading: BackButton(onPressed: () => Navigator.of(context).pop()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(5.0), child: _buildRow(0)),
          Padding(padding: const EdgeInsets.all(5.0), child: _buildRow(1)),
          Padding(padding: const EdgeInsets.all(5.0), child: _buildRow(2)),
          const SizedBox(height: 50,),
          Padding(padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.blueGrey,
                child: GestureDetector(
                  onTap: checkWinner(),
                  child: Text(_result, textScaleFactor: 1.5, style: const TextStyle(
                    color: Colors.amber,
                  ),),
                ),)
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _board[0][0] = " ";
                  _board[0][1] = " ";
                  _board[0][2] = " ";
                  _board[1][0] = " ";
                  _board[1][1] = " ";
                  _board[1][2] = " ";
                  _board[2][0] = " ";
                  _board[2][1] = " ";
                  _board[2][2] = " ";
                  _result = "Check Result";
                });
              },
              child: const Text("Clear", textScaleFactor: 1.5,),
            ),
          ),
        ],
      ),
    );
  }
}