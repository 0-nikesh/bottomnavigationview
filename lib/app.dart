import 'package:bottomnavigationview/cubit/areaofcircle_cubit.dart';
import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:bottomnavigationview/cubit/counter_cubit.dart';
import 'package:bottomnavigationview/cubit/dashboard_cubit.dart';
import 'package:bottomnavigationview/cubit/simpleinterest_cubit.dart';
import 'package:bottomnavigationview/cubit/student_cubit.dart';
import 'package:bottomnavigationview/cubit/tsaofcube_cubit.dart';
import 'package:bottomnavigationview/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ArithmeticCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(create: (context) => AreaofcircleCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => TsaofcubeCubit()),
        BlocProvider(
            create: (context) => DashboardCubit(
                  context.read<CounterCubit>(),
                  context.read<ArithmeticCubit>(),
                  context.read<StudentCubit>(),
                  context.read<SimpleInterestCubit>(),
                  context.read<AreaofcircleCubit>(),
                  context.read<TsaofcubeCubit>(),
                ))
      ],
      child: const MaterialApp(
        // title: 'Flutter BLoC',
        debugShowCheckedModeBanner: false,

        home: DashboardCubitView(),
      ),
    );
  }
}
