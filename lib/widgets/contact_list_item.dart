import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final String name;
  final String? surname;

  const ContactListItem({super.key, required this.name, this.surname});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text('$name ${surname ?? ''}'),
    );
  }
}
