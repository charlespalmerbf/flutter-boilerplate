import 'package:bluefrontier_flutter_boilerplate/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier {
  //List containing items in users shop
  final List<Drink> _shop = [
    Drink(
        name: "Pearl Milk Tea",
        price: "4.00",
        imagePath: "lib/images/milk_tea.png"),
  ];

  //List containing items in users cart
  final List<Drink> _userCart = [];

  //Get shop items
  List<Drink> get shop => _shop;

  //Get users cart
  List<Drink> get cart => _userCart;

  //Add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //Remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
