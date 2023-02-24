import 'package:flutter/material.dart';
import 'package:flutter_gdsc/Components/textfield.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network('https://cdn.pixabay.com/photo/2017/12/26/21/19/circle-3041437__480.jpg'),
          textfield(text: 'Email', isPassword: false),
          textfield(text: 'Password', isPassword: true),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: 100,
              color: constant.textSecondary,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: constant.textSecondary,
                      width: 2,
                    )
                  ),
                ),
                onPressed: (){},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: constant.textPrimary,
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      )
    );
  }
}
