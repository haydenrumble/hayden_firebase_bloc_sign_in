import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayden_firebase_bloc_sign_in/login/login.dart';
import 'package:hayden_firebase_bloc_sign_in/sign_up/sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

import 'widgets/email_input.dart';
import 'widgets/google_login_button.dart';
import 'widgets/login_button.dart';
import 'widgets/password_input.dart';
import 'widgets/signup_button.dart';


class LoginForm extends StatelessWidget {

  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state){
        if(state.status.isSubmissionFailure){
          ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Authentication Failed'),
            ),
          );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/bloc_logo_small.png',height: 120,),
              const SizedBox(height: 16),
              EmailInput(),
              const SizedBox(height: 8),
              PasswordInput(),
              const SizedBox(height: 8),
              LoginButton(),
              const SizedBox(height: 8),
              GoogleLoginButton(),
              const SizedBox(height: 4),
              SignUpButton(),
            ],
          ),
        ),
      ),
    );

  }


}