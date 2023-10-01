import 'package:chai_app/models/coffee.dart';
import 'package:flutter/cupertino.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    //black
    Coffee(name: 'Long Black', price: '4.10', imagePath: 'lib/images/takeway.png'),
    //late
    Coffee(name: 'Latte', price: '3.10', imagePath: 'lib/images/latte-art.png'),
    //iced coffee
    Coffee(name: 'Ice Coffee', price: '5.00', imagePath: 'lib/images/cold-coffee.png'),
    //espresso
    Coffee(name: 'Espresso', price: '3.90', imagePath: 'lib/images/espessoto.png'),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

}