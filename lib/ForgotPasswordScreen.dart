import 'package:bibs/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PwdRecoveryForm()
    );
  }
}

class PwdRecoveryForm extends StatefulWidget {
  @override
  PwdRecoveryFormState createState () => PwdRecoveryFormState();
}

class PwdRecoveryFormState extends State<PwdRecoveryForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 75, right: 75, top: 50),
              child: Image.asset(
                'assets/images/BIBS_Black.png',
              ),
            ),
            Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      formField(text: "Please enter your email", icon: Icon(Icons.person, color: Colors.grey[600]), obscure: false),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 15),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: sendResetPwdEmail,
                          child: Text('Send email', style: TextStyle(fontSize: 15, letterSpacing: 1.5),),
                          color: Colors.white,
                          elevation: 7,
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
  Widget formField({String text, Icon icon, bool obscure}) {
    return (
        Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 20),
            child: TextFormField(
              cursorColor: Colors.grey[600],
              obscureText: obscure,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelStyle: TextStyle(color: Colors.grey[600]),
                labelText: text,
                prefixIcon: icon,
              ),
            )
        )
    );
  }

  void sendResetPwdEmail() {
    print('Email Sent');
    Navigator.pushReplacementNamed(context, loginRoute);
  }
}
