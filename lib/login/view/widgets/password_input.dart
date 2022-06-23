import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayden_firebase_bloc_sign_in/login/login.dart';

class PasswordInput extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>  previous.password != current.password,
      builder: (context, state){
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().passwordChanged(email),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            helperText: '',
            errorText: state.email.invalid ? 'invalid password' : null,
          ),
        );
    });
  }

}