import 'package:doctor_bloc/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit/cubit.dart';
import 'app_cubit/states.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..aMethodYouWantToDoBeforeBuildingTheUi(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        },
      ),
    );
  }
}
