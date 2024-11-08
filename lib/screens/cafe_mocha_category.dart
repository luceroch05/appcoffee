import 'package:flutter/material.dart';

class CoffeeMochaCategory extends StatelessWidget {
  // Lista de productos para la categoría Café Mocha
  final List<Map<String, String>> mochaProducts = [
    {
      'name': 'Café Mocha Clásico',
      'price': 'S/ 10.00',
      'image': 'assets/mochaclasico.png',
    },
    {
      'name': 'Café Mocha con Crema',
      'price': 'S/ 12.00',
      'image': 'assets/mochacrema.png',
    },
    {
      'name': 'Café Mocha Vainilla',
      'price': 'S/ 13.00',
      'image': 'assets/mochavainilla.png',
    },
    // Puedes agregar más productos aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Café Mocha'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos productos por fila
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: mochaProducts.length,
        itemBuilder: (context, index) {
          final product = mochaProducts[index];

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
