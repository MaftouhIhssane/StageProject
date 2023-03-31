import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Settings.dart';
import 'Wallet.dart';
import 'TransferMoney.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(375, 812),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: SizedBox(
                  height: 225,
                  child: Image(
                    image: AssetImage('Images/SLFBank.png'),
                  ),
                ),
              ),
              _getSLFBankcard(context),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff348ddb),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '014 500 0000210000515708 14',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'IBAN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff348ddb),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'MA12 0145 0000 0021 0000 5157 0814',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Holder',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff348ddb),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mr.ZITOUNI HMED',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '40 BLOC A',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'HAY EL QODS',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '25000 KHOURIBGA',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'MOROCCO',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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

  Widget _getSLFBankcard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 92, 85, 85).withOpacity(0.2),
            spreadRadius: 8,
            blurRadius: 7,
            offset: Offset(0, 1),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SLFBank',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Image.asset(
                'Images/mastercard.png',
                height: 40,
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'Images/Chip.png',
                height: 30,
              ),
              Image.asset('Images/icon-contactless-reverse.png', height: 30),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tooltip(
                message: '4457',
                child: Text(
                  '4***',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Tooltip(
                message: '1280',
                child: Text(
                  '****',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Tooltip(
                message: '0842',
                child: Text(
                  '****',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Tooltip(
                message: '1357',
                child: Text(
                  '**57',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CARD HOLDER',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF707070),
                ),
              ),
              Text(
                'VALID UNTIL',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF707070),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ZITOUNI HMED',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                '01/2028',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
