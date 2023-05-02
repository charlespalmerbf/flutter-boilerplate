import 'package:bubble_tea/models/drink.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;

  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;
  double iceValue = 0.5;
  double pearlValue = 0.5;

  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  void customizePearl(double newValue) {
    setState(() {
      pearlValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: Column(children: [
        Image.asset(widget.drink.imagePath),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(width: 100, child: const Text('Sweetness')),
                Expanded(child: Slider(value: sweetValue, label: sweetValue.toString(), divisions: 4, onChanged: (value) => customizeSweet(value)))
              ],),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(width: 100, child: const Text('Ice')),
                Expanded(child: Slider(value: iceValue, label: iceValue.toString(), divisions: 4, onChanged: (value) => customizeIce(value)))
              ],),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(width: 100, child: const Text('Pearls')),
                Expanded(child: Slider(value: pearlValue, label: pearlValue.toString(), divisions: 4, onChanged: (value) => customizePearl(value)))
              ],),
            )
          ],
        )

      ]),
    );
  }
}