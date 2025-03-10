import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../screens/contact_details_screen.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: CircleAvatar(child: Text(contact.firstName[0])),
        title: Text('${contact.firstName} ${contact.lastName}'),
        trailing: contact.isBirthdayToday()
            ? Image.asset('assets/images/birthday.png', width: 30)
            : null,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactDetailsScreen(contact: contact),
            ),
          );
        },
      ),
    );
  }
}
