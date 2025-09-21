import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_schedule/app_observer.dart';
import 'package:my_schedule/core/injectable/injectable.dart';
import 'package:my_schedule/feature/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = const AppBlocObserver();

  await configureDependencies();
  runApp(const App());
}
