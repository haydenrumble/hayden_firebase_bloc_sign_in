import 'package:flutter/widgets.dart';
import 'package:hayden_firebase_bloc_sign_in/app/app.dart';
import 'package:hayden_firebase_bloc_sign_in/home/home.dart';
import 'package:hayden_firebase_bloc_sign_in/login/login.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages){

  switch (state){

    case AppStatus.authenticated:
      return[HomePage.page()];
    
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
      
  }

}