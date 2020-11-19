import 'package:alloy/components/already_have_an_account_acheck.dart';
import 'package:alloy/components/rounded_button.dart';
import 'package:alloy/components/rounded_password_field.dart';
import 'package:alloy/components/text_field_container.dart';
import 'package:alloy/constants.dart';
import 'package:flutter/material.dart';
import 'package:alloy/Screens/Login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:alloy/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: size.height * 0.05,),
          SvgPicture.asset(
            "assets/icons/wallet.svg",
            width: size.width * 0.8,
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03,),
          AlreadyHaveAnAccountCheck(press: () {},),
        ],
      ),
    );
  }
}
