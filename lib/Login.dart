import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CreateAccount.dart';
import 'PhoneVerification.dart';
import 'ForgetPassword.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(360, 690),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 3),
            Spacer(flex: 1),
            // image
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.white)),
              child: Image(width: 300, image: AssetImage('Images/SLFBank.png')),
            ),
            Spacer(flex: 5),
            SizedBox(height: 1),
            // email field
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
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your CIN',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

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
                      obscureText: true,
                      decoration: InputDecoration(
                        hintMaxLines: 1,
                        hintText: 'Enter your password',
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
              width: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    250,
                    0,
                    40,
                    60,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ),
                      );
                    },
                    child: Text('Forget password?'),
                  ),
                ),
              ],
            ),

            Spacer(flex: 9),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhoneVerification(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: Color(0xff95f095),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 13,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              child: new Text(
                "Don't have an account yet? Create one",
                style: TextStyle(fontSize: 12),
              ),
              style: TextButton.styleFrom(
                  iconColor: Color.fromARGB(0, 138, 135, 135)),
            ),
            SizedBox(height: 80.16),
            Text(
              "SLFBank.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0x0c000000),
                fontSize: 16,
              ),
            ),
            Spacer(
              flex: 20,
            )
          ],
        ),
      ),
    );
  }
}
