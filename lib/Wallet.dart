import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/TransferMoney.dart';
import 'Home.dart';
import 'TransferMoney.dart';
import 'package:intl/intl.dart';

import 'Settings.dart';

String _getDate() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('MMM d, yyyy').format(now);
  return formattedDate;
}

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  double _balance = 80000.0;
  List<String> _transactionHistory = [
    "Deposit: +200.00",
    "Withdrawal: -500.00",
    "Deposit: +100.00",
    "Withdrawal: -500.00",
    "Withdrawal: -300.00",
    "Deposit: +1000.00",
    "Withdrawal: -400.00",
    "Deposit: +100.00",
    "Deposit: +2000.00",
  ];

  @override
  Widget build(BuildContext context) {
    (context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 120.0),
          Text(
            "Current Balance",
            style: TextStyle(
              fontSize: 40,
              color: Color(0xff348ddb),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20.0),
              Text(
                "${_balance.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(width: 5.0),
              Text(
                "DH",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20.0),
            ],
          ),
          SizedBox(height: 80.0),
          Row(
            children: [
              SizedBox(width: 10.0),
              Text(
                "History",
                style: TextStyle(
                  color: Color(0xff348ddb),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _transactionHistory.length,
                    itemBuilder: (BuildContext context, int index) {
                      String transaction = _transactionHistory[index];
                      String transactionType = transaction.split(": ")[0];
                      String transactionAmount = transaction.split(": ")[1];
                      Color amountColor = transactionAmount.startsWith("+")
                          ? Colors.green
                          : Colors.red;
                      return ListTile(
                        title: Text(
                          transactionType,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _getDate(),
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              transactionAmount + " DH",
                              style: TextStyle(
                                color: amountColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          child: GNav(
            color: Color.fromRGBO(52, 141, 219, 1.000),
            activeColor: Color.fromRGBO(52, 141, 219, 1.000),
            tabBackgroundColor: Color.fromARGB(14, 96, 125, 139),
            gap: 10,
            padding: EdgeInsets.all(16),
            selectedIndex: 2,
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
