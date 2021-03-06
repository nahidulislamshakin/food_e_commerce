import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/auth_provider.dart';

class AtuhSignUp extends StatefulWidget {
  @override
  State<AtuhSignUp> createState() => _AtuhSignUpState();
}

class _AtuhSignUpState extends State<AtuhSignUp> {
  // const AtuhSignUp({Key? key}) : super(key: key);
  final _keyform = GlobalKey<FormState>();

  final Map<String, String> _authData = {
    'email': '',
    'password': '',
    'con-password': ''
  };

  Future<void> signUp() async {
    final validate = _keyform.currentState!.validate();
    if (!validate) {
      return;
    }
    _keyform.currentState!.save();
    if (_authData['password'] == _authData['con-password']) {
      await Provider.of<AuthProvider>(context, listen: false).authSignUp(
        _authData['email'].toString(),
        _authData['password'].toString(),
      );

      Navigator.of(context).pushNamed('/sign-in');
    } else {
      print('password not match');
    }

    print(_authData['email']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _keyform,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['email'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length <= 6 && value.isEmpty) {
                        return 'password min length 6';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['password'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.length <= 6 && value.isEmpty) {
                        return 'password min length 6';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['con-password'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        fixedSize: Size(150, 50)),
                    onPressed: signUp,
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already sign-up ?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign-in');
                          },
                          child: const Text(
                            'sign-in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
