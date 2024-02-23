import 'package:flutter/material.dart';

class CoffeeMachineScreen extends StatefulWidget {
  const CoffeeMachineScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeMachineScreen> createState() => _CoffeeMachineScreenState();
}

class _CoffeeMachineScreenState extends State<CoffeeMachineScreen> {
  int beans = 10;
  int water = 100;

  void addWater() {
    water += 300;
    setState(() {});
  }

  void addBeans() {
    beans += 30;
    setState(() {});
  }

  void makeCoffee() {
    if (beans < 10) {
      showMessage('Not enough beans, please add them');
    } else if (water < 100) {
      showMessage('Not enough water, please add it');
    } else {
      beans -= 10;
      water -= 100;
      setState(() {});
      showMessage("Here's your coffee");
    }
  }

  void showMessage(String message) {
    // Hides previous snackBar
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

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
                onPressed: () {
                  addBeans();
                },
                child: const Text('Add beans'),
              ),
              TextButton(
                onPressed: () {
                  addWater();
                },
                child: const Text('Add water'),
              ),
              TextButton(
                onPressed: () {
                  makeCoffee();
                },
                child: const Text('Make coffee'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
