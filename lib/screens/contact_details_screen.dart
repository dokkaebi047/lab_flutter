import 'package:flutter/material.dart';
import '../models/contact.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;

  const ContactDetailsScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${contact.firstName} ${contact.lastName}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Имя: ${contact.firstName}',
                style: const TextStyle(fontSize: 18)),
            Text('Фамилия: ${contact.lastName}',
                style: const TextStyle(fontSize: 18)),
            Text('Телефон: ${contact.phone}',
                style: const TextStyle(fontSize: 18)),
            Text('Email: ${contact.email}',
                style: const TextStyle(fontSize: 18)),
            Text('Дата рождения: ${contact.birthday.toLocal()}'.split(' ')[0],
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            if (contact.isBirthdayToday())
              const Text(
                'Сегодня день рождения!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
