import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayden_firebase_bloc_sign_in/login/login.dart';

class EmailInput extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>  previous.email != current.email,
      builder: (context, state){
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'email',
            helperText: '',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
    });
  }


}