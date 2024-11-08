import 'package:appcoffee/screens/cafe_americano_category.dart';
import 'package:appcoffee/screens/cafe_capuccino.category.dart';
import 'package:flutter/material.dart';
import '../widgets/profile_app_bar.dart';
import '../widgets/search_bar.dart' as custom; // Alias para tu SearchBar
import '../widgets/categories_slider.dart'; // Importa el CategoriesSlider
import 'cafe_latte_screen.dart';
import 'cafe_mocha_category.dart';
import 'featured_products_screen.dart'; // Importa la pantalla de productos destacados
import 'coffee_expresso_category.dart'; // Importa la pantalla de la categoría Café Expreso
 // Importa la pantalla de la categoría Cappuccino

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // El índice para cambiar el contenido en el cuerpo
  int _bottomNavIndex = 0; // El índice para cambiar el contenido del BottomNavigationBar

  // Método para cambiar el contenido cuando se selecciona una categoría
  void _onCategorySelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Método para manejar el cambio en el BottomNavigationBar
  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
      // Aquí puedes realizar acciones diferentes según la pestaña seleccionada
      // por ejemplo, podrías cambiar _selectedIndex si deseas que el BottomNav afecte la categoría
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: ProfileAppBar(),
      ),
      body: Column(
        children: [
          custom.SearchBar(), // Usamos el alias 'custom' para referirnos a tu SearchBar
          CategoriesSlider(
            categories: [
              {'name': 'Destacados', 'icon': Icons.star},
              {'name': 'Café Espresso', 'icon': Icons.coffee},
              {'name': 'Café Latte', 'icon': Icons.local_cafe},
              {'name': 'Café Mocha', 'icon': Icons.coffee},
              {'name': 'Café Americano', 'icon': Icons.local_cafe},
              {'name': 'Cappuccino', 'icon': Icons.coffee},
            ],
            onCategorySelected: _onCategorySelected, // Pasa la función aquí
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex, // Cambia el contenido según el índice seleccionado
              children: [
                FeaturedProductsScreen(), // Pantalla de productos destacados (índice 0)
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
        backgroundColor: Colors.white, // Color de fondo blanco
        selectedItemColor: Colors.brown, // Color del ícono seleccionado
        unselectedItemColor: Color(0xFFCD9967), // Color de íconos no seleccionados
        currentIndex: _bottomNavIndex, // Índice actual del BottomNavigationBar
        onTap: _onBottomNavTapped, // Cambia el índice al hacer tap
        showSelectedLabels: false, // Oculta las etiquetas de texto seleccionadas
        showUnselectedLabels: false, // Oculta las etiquetas de texto no seleccionadas
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
