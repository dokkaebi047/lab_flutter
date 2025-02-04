class Contact {
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final DateTime birthday;

  Contact({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.birthday,
  });

  bool isBirthdayToday() {
    final now = DateTime.now();
    return now.day == birthday.day && now.month == birthday.month;
  }
}
