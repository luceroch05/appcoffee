import 'package:flutter/material.dart';

class CoffeeLatteScreen extends StatelessWidget {
  final List<Map<String, String>> latteProducts = [
    {
      'name': 'Café Latte Clásico',
      'price': 'S/ 10.00',
      'image': 'assets/latteclasico.png',
    },
    {
      'name': 'Café Latte Vainilla',
      'price': 'S/ 12.00',
      'image': 'assets/lattevainilla.png',
    },
    {
      'name': 'Café Latte Caramelo',
      'price': 'S/ 12.50',
      'image': 'assets/lattecaramelo.png',
    },
    // Agrega más productos aquí si deseas
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Café Latte'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: latteProducts.length,
        itemBuilder: (context, index) {
          final product = latteProducts[index];

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
