import 'package:flutter_boilerplate/components/drink_tile.dart';
import 'package:flutter_boilerplate/models/drink.dart';
import 'package:flutter_boilerplate/models/shop.dart';
import 'package:flutter_boilerplate/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToOrderPage(Drink drink) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => OrderPage(drink: drink)));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('lib/images/logo.png'),
                  ),
                  const Text("Flutter Boilerplate",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.shop.length,
                          itemBuilder: (context, index) {
                            Drink individualDrink = value.shop[index];
                            return DrinkTile(
                                drink: individualDrink,
                                trailing: const Icon(Icons.arrow_forward),
                                onTap: () => goToOrderPage(individualDrink));
                          }))
                ]),
              ),
            ));
  }
}
