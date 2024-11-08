import 'package:flutter/material.dart';

class CoffeeExpressoCategory extends StatelessWidget {
  final List<Map<String, String>> expressoProducts = [
    {'name': 'Café Expreso Clásico', 'price': 'S/ 8.00', 'image': 'assets/expreso.png'},
    {'name': 'Café Expreso con Leche', 'price': 'S/ 9.00', 'image': 'assets/expresoleche.png'},
    // Agrega más productos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Café Expreso'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: expressoProducts.length,
        itemBuilder: (context, index) {
          final product = expressoProducts[index];

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
                      SnackBar(content: Text('${product['name']} agregado al carrito')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFFFFF),
                  ),
                  child: Text('Agregar', style: TextStyle(color: Color(0xFFCD9967))),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
