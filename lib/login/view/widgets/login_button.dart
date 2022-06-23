import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayden_firebase_bloc_sign_in/login/login.dart';
import 'package:formz/formz.dart';

class LoginButton extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: ((previous, current) => previous.status != current.status),
      builder:(context, state){

        return state.status == FormzStatus.submissionInProgress 
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    key: const Key('loginForm_continue_raisedButton'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: const Color(0xFFFFD600),
                    ),
                    onPressed: state.status.isValidated
                              ? () => context.read<LoginCubit>().logInWithCredentials()
                              : null,
                    child: const Text('LOGIN'),
                );
      });
  }
  

}