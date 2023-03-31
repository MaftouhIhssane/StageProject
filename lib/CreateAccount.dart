import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

import 'BankAppointment.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  DateTime? _selectedDate;

  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _cinController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmationController =
      TextEditingController();
  bool _isFormValid = false;

  void _checkFormValidity() {
    setState(() {
      _isFormValid = _fullNameController.text.isNotEmpty &&
          _cinController.text.isNotEmpty &&
          _birthDateController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _passwordConfirmationController.text.isNotEmpty &&
          _passwordController.text == _passwordConfirmationController.text;
    });
  }

  final _formKey = GlobalKey<FormState>();

  void _resetForm() {
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: Color(0xff0c0c0c),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Please fill out the following information to create an account',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 40),
                      // Full Name field
                      Container(
                        width: 350,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xfff7f7f7),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff7f7f7),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff7f7f7),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _fullNameController,
                                onChanged: (value) {
                                  _checkFormValidity();
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person),
                                  hintText: 'Full Name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),
                      // CIN field
                      Container(
                        width: 350,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xfff7f7f7),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff7f7f7),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff7f7f7),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _cinController,
                                onChanged: (value) {
                                  _checkFormValidity();
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email),
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
// CIN field
                      Container(
                        width: 350,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xfff7f7f7),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff7f7f7),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff7f7f7),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _cinController,
                                onChanged: (value) {
                                  _checkFormValidity();
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.credit_card),
                                  hintText: 'CIN',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
// birth date field
                      Container(
                        width: 350,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xfff7f7f7),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff7f7f7),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff7f7f7),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime.now(),
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData(
                                          colorScheme: ColorScheme.light(
                                            primary: Color(0xff1f1f1f),
                                            onPrimary: Colors.white,
                                            surface: Color(0xfff7f7f7),
                                            onSurface: Colors.black,
                                          ),
                                          textTheme: TextTheme(
                                            caption: TextStyle(
                                              color: Colors.white,
                                            ),
                                            button: TextStyle(
                                              color: Colors.white,
                                            ),
                                            subtitle1: TextStyle(
                                              color: Colors.black,
                                            ),
                                            headline5: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        child: child!,
                                      );
                                    },
                                  );
                                  if (picked != null) {
                                    setState(() {
                                      _selectedDate = picked;
                                      _birthDateController.text =
                                          "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}";
                                      _checkFormValidity();
                                    });
                                  }
                                },
                                child: AbsorbPointer(
                                  child: TextField(
                                    controller: _birthDateController,
                                    onChanged: (value) {
                                      _checkFormValidity();
                                    },
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.calendar_today),
                                      hintText: 'Birth Date',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                onChanged: (value) {
                                  _checkFormValidity();
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.lock),
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          _resetForm();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BankAppointment()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          backgroundColor: Color(0xff95f095),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 13,
                          ),
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
