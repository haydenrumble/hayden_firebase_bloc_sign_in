
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:hayden_firebase_bloc_sign_in/app/app.dart';

Future<void>  main(List<String> args) {

  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp();
      final authenticationRespository = AuthenticationRepository();
      await authenticationRespository.user.first;
      runApp(App(authenticationRepository: authenticationRespository,));

    },
    blocObserver: AppBlocObserver(),
  );

}