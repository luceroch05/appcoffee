import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  final Function onClearCart;

  CartScreen({required this.cartItems, required this.onClearCart});

  // Método para calcular el total a pagar
  double _calculateTotal() {
    return cartItems.fold(0, (total, item) => total + item["quantity"] * item["price"]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final item = cartItems[index];
              return ListTile(
                leading: Icon(Icons.local_cafe, color: Colors.brown),
                title: Text(item["name"]),
                subtitle: Text('Cantidad: ${item["quantity"]}'),
                trailing: Text('\$${(item["quantity"] * item["price"]).toStringAsFixed(2)}'),
              );
            },
          ),
        ),
        Divider(thickness: 1.0, color: Colors.grey[300]),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Total: \$${_calculateTotal().toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Acción para continuar la compra
                    },
                    child: Text('Continuar Compra'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onClearCart(); // Vaciar el carrito
                    },
                    child: Text('Vaciar Carrito'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
