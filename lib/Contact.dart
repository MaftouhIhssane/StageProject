import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:login_page/Wallet.dart';

import 'TransferMoney.dart';
import 'Home.dart';
import 'Settings.dart';
import 'Wallet.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int _selectedIndex = 1;
  final _formKey = GlobalKey<FormState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 180),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Bank Information:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff348ddb),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Bank name: SLFBank",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 80),
                    Text(
                      "Contact Information:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff348ddb),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Email: SLFBank_contact@gmail.com",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Phone: +212 52-456-7820",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 80),
                    Text(
                      "Work Hours:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff348ddb),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Monday - Friday: 9:00 AM - 5:00 PM",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Your form widgets here
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTapped,
              color: Color.fromRGBO(52, 141, 219, 1.000),
              activeColor: Color.fromRGBO(52, 141, 219, 1.000),
              tabBackgroundColor: Color.fromARGB(14, 96, 125, 139),
              gap: 10,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: Icons.home,
                  text: 'Home',
                  textStyle: TextStyle(fontSize: 18),
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferMoney()),
                    );
                  },
                  icon: Icons.attach_money,
                  text: 'Actions',
                  textStyle: TextStyle(fontSize: 18),
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wallet()),
                    );
                  },
                  icon: Icons.wallet,
                  text: 'Wallet',
                  textStyle: TextStyle(fontSize: 18),
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  icon: Icons.settings,
                  text: 'Settings',
                  textStyle: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
