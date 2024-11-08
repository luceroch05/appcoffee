// widgets/search_bar.dart

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar...',
          suffixIcon: Container(
            padding: const EdgeInsets.all(8.0), // Espaciado interno del ícono
            decoration: BoxDecoration(
              color: Color(0xFFCD9967), // Color marrón clarito
              borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
            ),
            child: Icon(Icons.search, color: Colors.white), // Ícono de lupa blanco
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        onChanged: (query) {
          // Aquí puedes manejar la lógica de búsqueda cuando el texto cambie
          print("Buscar: $query");
        },
      ),
    );
  }
}
