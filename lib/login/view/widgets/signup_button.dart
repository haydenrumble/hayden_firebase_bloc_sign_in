import 'package:flutter/material.dart';
import 'package:hayden_firebase_bloc_sign_in/sign_up/view/sign_up_page.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    final theme = Theme.of(context);

    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
      child: Text('CREATE ACCOUNT',style: TextStyle(color: theme.primaryColor),
      ),
    );

  }

}
