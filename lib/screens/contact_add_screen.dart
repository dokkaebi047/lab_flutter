import 'package:flutter/material.dart';

class ContactAddScreen extends StatefulWidget {
  const ContactAddScreen({super.key});

  @override
  _ContactAddScreenState createState() => _ContactAddScreenState();
}

class _ContactAddScreenState extends State<ContactAddScreen> {
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();

  void _saveContact() {
    if (_nameController.text.isNotEmpty) {
      Navigator.pop(context, {
        'name': _nameController.text,
        'surname': _surnameController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Добавить контакт')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Имя *'),
            ),
            TextField(
              controller: _surnameController,
              decoration: const InputDecoration(labelText: 'Фамилия'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveContact,
              child: const Text('Сохранить'),
            ),
          ],
        ),
      ),
    );
  }
}
