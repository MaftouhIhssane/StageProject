import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'TransferMoney.dart';
import 'Home.dart';
import 'Login.dart';
import 'PhoneVerification.dart';
import 'TransferMoney.dart';
import 'Verification.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'SLFBank',
      home: const Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
