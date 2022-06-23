import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayden_firebase_bloc_sign_in/sign_up/sign_up.dart';
import 'package:formz/formz.dart';

import 'widgets/confirm_password_input.dart';
import 'widgets/email_input.dart';
import 'widgets/password_input.dart';
import 'widgets/sign_up_button.dart';



class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {

        if (state.status.isSubmissionSuccess) {
          Navigator.of(context).pop();

        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
            );
        }

      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [

            EmailInput(),

            SizedBox(height: 8),
            
            PasswordInput(),
            
            SizedBox(height: 8),
            
            ConfirmPasswordInput(),
            
            SizedBox(height: 8),
            
            SignUpButton(),
            
          ],
        ),
      ),
    );
  }
}