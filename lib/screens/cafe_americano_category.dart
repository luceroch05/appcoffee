import 'package:flutter/material.dart';

class CoffeeAmericanoCategory extends StatelessWidget {
  // Lista de productos para la categoría Café Americano
  final List<Map<String, String>> americanoProducts = [
    {
      'name': 'Café Americano Clásico',
      'price': 'S/ 8.50',
      'image': 'assets/americanoclasico.png',
    },
    {
      'name': 'Café Americano Doble',
      'price': 'S/ 10.00',
      'image': 'assets/americanodoble.png',
    },
    {
      'name': 'Café Americano con Hielo',
      'price': 'S/ 9.00',
      'image': 'assets/americanohielo.png',
    },
    // Puedes agregar más productos aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Café Americano'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos productos por fila
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: americanoProducts.length,
        itemBuilder: (context, index) {
          final product = americanoProducts[index];

          return Card(
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
          );
        },
      ),
    );
  }
}
