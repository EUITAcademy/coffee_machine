import 'package:flutter/material.dart';

class CoffeeMachineScreen extends StatefulWidget {
  const CoffeeMachineScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeMachineScreen> createState() => _CoffeeMachineScreenState();
}

class _CoffeeMachineScreenState extends State<CoffeeMachineScreen> {
  int beans = 10;
  int water = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.coffee_maker,
            size: 64,
            color: Colors.brown,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Coffee Machine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Beans: $beans'),
              Text('Water: $water L'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Add beans'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Add water'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Make coffee'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
