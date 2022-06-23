import 'package:equatable/equatable.dart';

class User extends Equatable{

  const User({
    required this.id,
    this.email,
    this.name,
    this.photo
  });

  final String? email;
  final String  id;
  final String? name;
  final String? photo;


  // It's useful to define a static empty User 
  // so that we don't have to handle null Users 
  // and can always work with a concrete User object
  static const empty = User(id:'');
  

  bool get isEmpty    => this == User.empty;
  bool get isNotEmpty => this != User.empty;


  @override
  List<Object?> get props => [email, id, name, photo];

}

