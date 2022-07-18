import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'App',
        ),
        actions: const [
          Icon(
            Icons.notification_important
          ),
        
          Icon(
            Icons.headphones,
          ),
        
        ],
      
      ),
    );
  }
}
