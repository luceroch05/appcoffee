import 'package:flutter/material.dart';
import '../widgets/profile_app_bar.dart';
import '../widgets/search_bar.dart' as custom; // Alias para tu SearchBar
import '../widgets/categories_slider.dart'; // Importa el CategoriesSlider
import 'cafe_latte_screen.dart';
import 'featured_products_screen.dart'; // Importa la pantalla de productos destacados
import 'coffee_expresso_category.dart'; // Importa la pantalla de la categoría Café Expreso
 // Importa la pantalla de la categoría Cappuccino
// Agrega más imports según sea necesario para otras categorías

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // El índice para cambiar el contenido

  // Método para cambiar el contenido cuando se selecciona una categoría
  void _onCategorySelected(int index) {
    setState(() {
      _selectedIndex = index;
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
              {'name': 'Destacados', 'icon': Icons.star}, // Agregar 'Destacados' como primer elemento
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
                 // Contenido por defecto
                FeaturedProductsScreen(), // Pantalla de productos destacados (índice 0)
                CoffeeExpressoCategory(),
                CoffeeLatteScreen(), // Pantalla de la categoría Café Espresso (índice 1)
                 // Pantalla de la categoría Cappuccino (índice 2)
                // Agrega más pantallas de categorías según sea necesario
              ],
            ),
          ),
        ],
      ),
    );
  }
}
