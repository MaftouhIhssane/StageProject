import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:login_page/Wallet.dart';

import 'Home.dart';
import 'Settings.dart';
import 'Wallet.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  int _selectedIndex = 1;
  final _formKey = GlobalKey<FormState>();
  final _accountNumberController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isTransferSuccessful = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _transferMoney() {
    if (_formKey.currentState!.validate()) {
      _accountNumberController.clear();
      _amountController.clear();
    }
  }

  @override
  void dispose() {
    _accountNumberController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    (context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 180),
            child: Column(
              children: [
                Text(
                  "Transfer Money",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff348ddb),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'The perfect exchange and transfer service. Easy, Safe, and Fast.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
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
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _accountNumberController,
                      decoration: InputDecoration(
                        labelText: 'Account Number',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Account number is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: _amountController,
                      decoration: InputDecoration(
                        labelText: 'Amount (DH)',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+(.\d{0,2})?$'),
                        ),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Amount is required';
                        }
                        if (double.tryParse(value) == null) {
                          return 'Numbers only';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 60),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              _transferMoney();
                            },
                            child: Text(
                              _isTransferSuccessful ? 'Transfer' : 'Transfer',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff95f095),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 18),
                            ),
                          ),
                        ),
                        if (_isTransferSuccessful)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Transfer Successful',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
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
