import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeState {}

class Initial extends HomeState {}

class HomeProcess extends HomeState {}

class HomeSuccess extends HomeState {}

class HomeFail extends HomeState {
  final String errorMessage;

  HomeFail({required this.errorMessage});
}