import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  final List<Map<String, dynamic>> categories;
  final Function(int) onCategorySelected; // Este es el nuevo parámetro

  // Constructor para recibir las categorías y la función para cuando se selecciona una categoría
  CategoriesSlider({required this.categories, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinear el título a la izquierda
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Categorías', // Título de las categorías
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.brown[700], // Color para el título
            ),
          ),
        ),
        Container(
          height: 80.0, // Altura ajustada para una mejor visualización
          child: ListView.builder(
            itemCount: categories.length, // Número de categorías
            scrollDirection: Axis.horizontal, // Deslizar horizontalmente
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  onCategorySelected(index); // Llamar la función cuando se selecciona una categoría
                },
                child: Container(
                  width: 150.0, // Ancho de cada categoría
                  margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), // Añadido margin para evitar corte
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco
                    borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), // Color de la sombra
                        spreadRadius: 2, // Radio de expansión de la sombra
                        blurRadius: 5, // Borrosidad de la sombra
                        offset: Offset(0, 3), // Desplazamiento de la sombra
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centrar el contenido
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        categories[index]['icon'], // Icono de la categoría
                        size: 30.0, // Tamaño del ícono
                        color: Color(0xFFCD9967), // Íconos marrón clarito
                      ),
                      SizedBox(width: 8.0), // Espacio entre el icono y el texto
                      Text(
                        categories[index]['name'], // Nombre de la categoría
                        style: TextStyle(
                          color: Colors.brown[700], // Texto marrón oscuro
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0, // Tamaño reducido para la fuente del texto
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
