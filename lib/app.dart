import 'package:bottomnavigationview/cubit/dashboard_cubit.dart';
import 'package:bottomnavigationview/service_locator/service_locator.dart';
import 'package:bottomnavigationview/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // title: 'Flutter BLoC',
      debugShowCheckedModeBanner: false,
      title: "Flutter Bloc",
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: const DashboardCubitView(),
      ),
    );
  }
}