import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DiceRoller(),
  )
);
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int rand = 0;
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roller",
          style: TextStyle(
            color: Colors.yellow
          ),
          ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          
          height: 300,
          decoration: BoxDecoration(
          color: Colors.white,  
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.cyan,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                rand.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue
                ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                MaterialButton(
                  elevation: 0.0,
                  
                  color: Colors.cyan,
                  onPressed:() {
                    setState(() {
                      rand = random.nextInt(6) + 1;
                    });
                  },
                  child: Text(
                    "Roll",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      letterSpacing: 2.0
                    ),
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}