import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../widgets/contact_card.dart';
import 'add_contact_screen.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact(
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '+7 900 123 45 67',
      email: 'ivanov@gmail.com',
      birthday:
          DateTime(1990, DateTime.now().month, DateTime.now().day), // Сегодня
    ),
    Contact(
      firstName: 'Нурдин',
      lastName: 'Сыдыков',
      phone: '+99688996688',
      email: 'sdkvnur@gmail.com',
      birthday: DateTime(1985, 5, 10),
    ),
    Contact(
      firstName: 'Ким',
      lastName: 'Хен',
      phone: '+996558211233',
      email: 'maloer@gmail.com',
      birthday: DateTime(1992, 3, 15),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return Dismissible(
            key: Key(contact.phone), // Уникальный ключ для анимации удаления
            direction: DismissDirection.endToStart, // Свайп только влево
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              setState(() {
                contacts.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${contact.firstName} удалён')),
              );
            },
            child: ContactCard(contact: contact),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactScreen(
                onContactAdded: (newContact) {
                  setState(() {
                    contacts.add(newContact);
                  });
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
