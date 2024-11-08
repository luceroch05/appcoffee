import 'package:flutter/material.dart';
import 'coffee_expresso_category.dart'; // Importa la pantalla de la categoría Café Expreso

class FeaturedProductsScreen extends StatelessWidget {
  // Lista de productos con detalles como nombre, precio e imagen
  final List<Map<String, String>> products = [
    {
      'name': 'Café Expreso Clásico',
      'price': 'S/ 8.00',
      'image': 'assets/expreso.png', // Imagen del producto
    },
    {
      'name': 'Capuccino Cremoso',
      'price': 'S/ 10.00',
      'image': 'assets/capuccino.png',
    },
    {
      'name': 'Frappé de Vainilla',
      'price': 'S/ 12.00',
      'image': 'assets/frappe.png',
    },
    {
      'name': 'Tarta de Limón y Merengue',
      'price': 'S/ 15.00',
      'image': 'assets/tarta.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos Destacados'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos productos por fila
          crossAxisSpacing: 10.0, // Espaciado horizontal
          mainAxisSpacing: 10.0, // Espaciado vertical
        ),
        itemCount: products.length, // Número de productos
        itemBuilder: (context, index) {
          final product = products[index]; // Accede al producto en el índice

          return GestureDetector(
            onTap: () {
              // Verifica si el producto es de la categoría Café Expreso
              if (product['name'] == 'Café Expreso Clásico') {
                // Navegar a la pantalla de Café Expreso
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoffeeExpressoCategory(),
                  ),
                );
              }
            },
            child: Card(
              color: Color(0xFF4A2B0F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    product['image']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    product['name']!,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    product['price']!,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product['name']} agregado al carrito'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF),
                    ),
                    child: Text(
                      'Agregar',
                      style: TextStyle(color: Color(0xFFCD9967)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
