import 'package:flutter/widgets.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
    // food menu
  final List<Food> _foodMenu = [
    // French Fries
    Food(
      name: 'Frenzy Fries', 
      price: '3.99', 
      imagePath: 'lib/images/french-fries.png', 
      rating: '4.0',
    ),

    // Nacho
    Food(
      name: 'Nacheese', 
      price: '7.50', 
      imagePath: 'lib/images/nachos.png', 
      rating: '4.3',
    ),

    // Cola
    Food (
      name: 'Cocola',
      price: '2.00',
      imagePath: 'lib/images/cola.png',
      rating: '4.2'
    ),

    // Burger
    Food (
      name: 'Boorgar Chiz',
      price: '4.99',
      imagePath: 'lib/images/burger.png',
      rating: '4.2'
    ),
  ];

  // customer cart
  final List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i=0; i< quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}