import 'package:flutter/material.dart';
import '../widgets/contact_list_item.dart';
import 'contact_add_screen.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final List<Map<String, String>> _contacts = [
    {'name': 'Руслан', 'surname': 'Иванов'},
    {'name': 'Нурдин', 'surname': 'Сыдыков'},
    {'name': 'Ким', 'surname': 'Хен'},
  ];

  void _addContact(Map<String, String> newContact) {
    setState(() {
      _contacts.add(newContact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          return ContactListItem(
            name: _contacts[index]['name']!,
            surname: _contacts[index]['surname'],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newContact = await Navigator.push<Map<String, String>?>(
            context,
            MaterialPageRoute(builder: (context) => const ContactAddScreen()),
          );
          if (newContact != null) {
            _addContact(newContact);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
