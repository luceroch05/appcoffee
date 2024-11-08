import 'package:flutter/material.dart';

class CoffeeCappuccinoCategory extends StatelessWidget {
  // Lista de productos para la categoría Cappuccino
  final List<Map<String, String>> cappuccinoProducts = [
    {
      'name': 'Cappuccino Clásico',
      'price': 'S/ 10.00',
      'image': 'assets/capuccinoclasico.png',
    },
    {
      'name': 'Cappuccino Vainilla',
      'price': 'S/ 11.50',
      'image': 'assets/capuccinovainilla.png',
    },
    {
      'name': 'Cappuccino Caramelo',
      'price': 'S/ 12.00',
      'image': 'assets/capuccinocaramelo.png',
    },
    // Puedes agregar más productos aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cappuccino'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos productos por fila
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: cappuccinoProducts.length,
        itemBuilder: (context, index) {
          final product = cappuccinoProducts[index];

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
