import 'package:flutter/material.dart';
import 'dart:math';

final randomizor = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentRoll = 2;

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/dice-$currentRoll.png', width: 200,),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: () {
              setState(() {
                currentRoll = randomizor.nextInt(6) + 1;
              });
            }, 
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              elevation: 10,
              shadowColor: Colors.amber
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 28),
              )
          )
         ],);
  }
}