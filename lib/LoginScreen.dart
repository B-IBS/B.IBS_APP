import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LoginForm()
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState () => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isSignin = false;
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

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
              'assets/images/LOGO_BIBS_150x150mm-02_WHITE.png',
            ),
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  formField(text: "Email", icon: Icon(Icons.person, color: Colors.grey[600]), controller: _loginController, obscure: false),
                  formField(text: "Password", icon: Icon(Icons.lock, color: Colors.grey[600]), controller: _passwordController, obscure: true),
                  passwordConfirmField(text: "Confirm Password", icon: Icon(Icons.lock, color: Colors.grey[600]), controller: _passwordConfirmController, obscure: true),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: loginToServer,
                      child: Text(_isSignin ? 'SIGNUP' : 'LOGIN', style: TextStyle(fontSize: 15, letterSpacing: 1.5),),
                      color: Colors.black,
                      elevation: 7,
                      textColor: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, top: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                        setState(() {
                          _isSignin = !_isSignin;
                        });
                      },
                      child: Text(_isSignin ? 'LOGIN TO ACCOUNT' : 'CREATE AN ACCOUNT', style: TextStyle(fontSize: 15, letterSpacing: 1.5),),
                      color: Colors.white,
                      elevation: 7,
                      textColor: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: clickableLink("forgot password ?", "/forgot-pass"),
                  ),
                ],
              ),
            )
          )
        ],
      )
    );
  }

  Widget passwordConfirmField({String text, Icon icon, TextEditingController controller, bool obscure}) {
    if (_isSignin) {
      return (
        formField(text: text, icon: icon, controller: controller, obscure: obscure)
      );
    } else {
      return (
        Divider(height: 20,)
      );
    }
  }

  Widget formField({String text, Icon icon, TextEditingController controller, bool obscure}) {
    return (
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        child: TextFormField(
          controller: controller,
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

  void loginToServer() {
    print('Login: ' + _loginController.text);
    print('Password: ' + _passwordController.text);
    Navigator.pushReplacementNamed(context, '/');
  }

  GestureDetector clickableLink(String text, String route) {
    return new GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: new Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
