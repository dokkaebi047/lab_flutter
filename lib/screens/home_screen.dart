import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'contact_list_screen.dart'; // Следующий экран

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Адресная книга')),
      body: Center(
        child: CustomButton(
          text: 'Начать',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ContactListScreen()),
            );
          },
        ),
      ),
    );
  }
}
