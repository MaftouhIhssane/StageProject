import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';

import 'Contact.dart';
import 'Home.dart';
import 'TransferMoney.dart';
import 'main.dart';
import 'Verification.dart';
import 'PhoneVerification.dart';
import 'Login.dart';
import 'Wallet.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedIndex = 3;
  String _selectedLanguage = "English";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onLanguageChanged(String? language) {
    setState(() {
      _selectedLanguage = language ?? "English";
    });
  }

  void _onLogOutPressed() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Login()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    (context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            SizedBox(height: 80),
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
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: _onLogOutPressed,
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: Color(0xff95f095),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 13,
                ),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
              ),
              GButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TransferMoney()),
                  );
                },
                icon: Icons.attach_money,
                text: 'Transfer',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
