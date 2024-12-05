import 'package:flutter/material.dart';
 // Pantalla de categoría (si aplica)
import 'products/destacados1.dart'; // Detalles del Capuccino

class FeaturedProductsScreen extends StatelessWidget {
  // Lista de productos con detalles como nombre, precio, imagen y página de destino
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Café Expreso Clásico',
      'price': 'S/ 8.00',
      'image': 'assets/expreso.png',
      'detailsPage': CoffeeExpressoDetails(),
    },
    {
      'name': 'Capuccino Cremoso',
      'price': 'S/ 10.00',
      'image': 'assets/capuccino.png',
      'detailsPage': CapuccinoDetails(),
    },
    {
      'name': 'Frappé de Vainilla',
      'price': 'S/ 12.00',
      'image': 'assets/frappe.png',
      'detailsPage': FrappeDetails(), // No hay página estática, agrega si la tienes
    },
    {
      'name': 'Tarta de Limón y Merengue',
      'price': 'S/ 15.00',
      'image': 'assets/tarta.png',
      'detailsPage': TartaDetails(), // No hay página estática, agrega si la tienes
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
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return GestureDetector(
            onTap: () {
              if (product['detailsPage'] != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => product['detailsPage'],
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Página no disponible')),
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
