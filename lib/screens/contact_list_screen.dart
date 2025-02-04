import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../widgets/contact_card.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> contacts = [
      Contact(
        firstName: 'Иван',
        lastName: 'Иванов',
        phone: '+7 900 123 45 67',
        email: 'ivanov@example.com',
        birthday:
            DateTime(1990, DateTime.now().month, DateTime.now().day), // Сегодня
      ),
      Contact(
        firstName: 'Нурдин',
        lastName: 'Сыдыков',
        phone: '+99688996688',
        email: 'sdkvur@gmail.com.com',
        birthday: DateTime(1985, 5, 10),
      ),
      Contact(
        firstName: 'Ким',
        lastName: 'Хен',
        phone: '+996558211233',
        email: 'hyngkim@gmail.com',
        birthday: DateTime(1992, 3, 15),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ContactCard(contact: contacts[index]);
        },
      ),
    );
  }
}
