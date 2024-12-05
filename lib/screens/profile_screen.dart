import 'package:flutter/material.dart';

class CustomerProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil del Cliente'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView( // Hacer desplazable el contenido
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Felix%28Stray_kids%29_221018.jpg/640px-Felix%28Stray_kids%29_221018.jpg'),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Lucero Changra',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'lucero@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Divider(height: 32),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración de la cuenta'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Acción para la configuración de la cuenta
                },
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('Historial de pedidos'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Acción para el historial de pedidos
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Cerrar sesión'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Acción para cerrar sesión
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
