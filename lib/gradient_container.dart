import 'package:flutter/material.dart';
import 'package:test_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  
  const GradientContainer({super.key});
  
  @override
  Widget build(context){
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange,
              Color.fromARGB(255, 247, 174, 17)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
        child: const Center(
         child: DiceRoller()
        ) 
      );
  }
}