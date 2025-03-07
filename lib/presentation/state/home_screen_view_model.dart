import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get addressController => _addressController;
  TextEditingController get fullNameController => _fullNameController;
  TextEditingController get phoneNumberController => _phoneNumberController;
}
