import 'package:flutter/material.dart';
import 'cart_screen.dart'; // Importa la pantalla del carrito
import '../widgets/profile_app_bar.dart';
import '../widgets/search_bar.dart' as custom;
import '../widgets/categories_slider.dart';
import 'cafe_latte_screen.dart';
import 'cafe_mocha_category.dart';
import 'featured_products_screen.dart';
import 'coffee_expresso_category.dart';
import 'profile_screen.dart';
import 'cafe_capuccino.category.dart';
import 'cafe_americano_category.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _bottomNavIndex = 0;

  final List<Map<String, dynamic>> _cartItems = [
    {"name": "Café Espresso", "quantity": 1, "price": 5.50},
    {"name": "Café Latte", "quantity": 2, "price": 4.00},
    {"name": "Cappuccino", "quantity": 1, "price": 6.00},
  ];

  void _clearCart() {
    setState(() {
      _cartItems.clear();
    });
  }

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: ProfileAppBar(),
      ),
      body: _bottomNavIndex == 2
          ? CustomerProfileScreen()
          : _bottomNavIndex == 1
              ? CartScreen(cartItems: _cartItems, onClearCart: _clearCart)
              : Column(
                  children: [
                    custom.SearchBar(),
                    CategoriesSlider(
                      categories: [
                        {'name': 'Destacados', 'icon': Icons.star},
                        {'name': 'Café Espresso', 'icon': Icons.coffee},
                        {'name': 'Café Latte', 'icon': Icons.local_cafe},
                        {'name': 'Café Mocha', 'icon': Icons.coffee},
                        {'name': 'Café Americano', 'icon': Icons.local_cafe},
                        {'name': 'Cappuccino', 'icon': Icons.coffee},
                      ],
                      onCategorySelected: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                    Expanded(
                      child: IndexedStack(
                        index: _selectedIndex,
                        children: [
                          FeaturedProductsScreen(),
                          CoffeeExpressoCategory(),
                          CoffeeLatteScreen(),
                          CoffeeMochaCategory(),
                          CoffeeAmericanoCategory(),
                          CoffeeCappuccinoCategory(),
                        ],
                      ),
                    ),
                  ],
                ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Color(0xFFCD9967),
        currentIndex: _bottomNavIndex,
        onTap: _onBottomNavTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuario',
          ),
        ],
      ),
    );
  }
}
