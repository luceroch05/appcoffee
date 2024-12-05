
import 'package:flutter/material.dart';
class CoffeeExpressoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambiado a blanco
      appBar: AppBar(
        backgroundColor: Color(0xFFE3B67C),
        elevation: 0,
        title: Text(
          'Café Expreso Clásico',
          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 247, 246, 246), Color(0xFFF7E9D3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/expreso.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Café Expreso Clásico',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'S/ 8.00',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE3B67C),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(height: 16),
              Divider(color: Color(0xFF6C4F3D)),
              Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Un café expreso clásico con un sabor intenso, cuerpo robusto y aroma inconfundible. Perfecto para los amantes del café puro.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Volumen 120 ml',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Café Expreso agregado al carrito')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE3B67C),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Comprar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CapuccinoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambiado a blanco
      appBar: AppBar(
        backgroundColor: Color(0xFFE3B67C),
        elevation: 0,
        title: Text('Capuccino Cremoso'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white, // Fondo circular blanco
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.withOpacity(0.2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Image.asset(
                      'assets/capuccino.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Capuccino Cremoso',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'S/ 10.00',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE3B67C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Espresso con partes iguales de leche vaporizada y espuma. Un toque especial de cacao lo hace perfecto.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Volumen 160 ml',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Capuccino agregado al carrito')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE3B67C),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.brown.withOpacity(0.5),
                  elevation: 5,
                ),
                child: Text(
                  'Comprar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class FrappeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambiado a blanco
      appBar: AppBar(
        backgroundColor: Color(0xFFE3B67C),
        elevation: 0,
        title: Text('Frappé de Vainilla'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white, // Fondo circular blanco
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.withOpacity(0.2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Image.asset(
                      'assets/frappe.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Frappe de vainilla',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'S/ 20.00',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE3B67C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Frappe con partes iguales de leche vaporizada y espuma. Un toque especial de cacao lo hace perfecto.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Volumen 160 ml',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Frappe agregado al carrito')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE3B67C),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.brown.withOpacity(0.5),
                  elevation: 5,
                ),
                child: Text(
                  'Comprar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TartaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambiado a blanco
      appBar: AppBar(
        backgroundColor: Color(0xFFE3B67C),
        elevation: 0,
        title: Text('Tarta de Limon y Merengue'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white, // Fondo circular blanco
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.withOpacity(0.2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Image.asset(
                      'assets/tarta.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Tarta de Limon y Merengue',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'S/ 20.00',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE3B67C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2B0F),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Tarta con partes iguales de leche vaporizada y espuma. Un toque especial de cacao lo hace perfecto.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Volumen 160 ml',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6C4F3D),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Frappe agregado al carrito')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE3B67C),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.brown.withOpacity(0.5),
                  elevation: 5,
                ),
                child: Text(
                  'Comprar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}