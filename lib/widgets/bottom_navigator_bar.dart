import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Cambia el índice cuando el usuario selecciona una pestaña
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Aquí podrías mostrar diferentes widgets según el _selectedIndex
        child: Text("Contenido de la pantalla $_selectedIndex"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // Color de fondo blanco
        selectedItemColor: Colors.brown, // Color de ícono seleccionado
        unselectedItemColor: Colors.grey, // Color de íconos no seleccionados
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false, // Oculta las etiquetas de texto seleccionadas
        showUnselectedLabels: false, // Oculta las etiquetas de texto no seleccionadas
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categorías',
          ),
        ],
      ),
    );
  }
}
