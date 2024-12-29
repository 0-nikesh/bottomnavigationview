import 'package:bottomnavigationview/cubit/areaofcircle_cubit.dart';
import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:bottomnavigationview/cubit/counter_cubit.dart';
import 'package:bottomnavigationview/cubit/simpleinterest_cubit.dart';
import 'package:bottomnavigationview/cubit/student_cubit.dart';
import 'package:bottomnavigationview/cubit/tsaofcube_cubit.dart';
import 'package:bottomnavigationview/view/areaofcircle_cubit_view.dart';
import 'package:bottomnavigationview/view/arithemetic_cubit_view.dart';
import 'package:bottomnavigationview/view/counter_cubit_view.dart';
import 'package:bottomnavigationview/view/simpleinterest_view.dart';
import 'package:bottomnavigationview/view/student_cubit_view.dart';
import 'package:bottomnavigationview/view/tsaofcube_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._simpleInterestCubit,
    this._areaofcircleCubit,
    this._tsaofcubeCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaofcircleCubit _areaofcircleCubit;
  final TsaofcubeCubit _tsaofcubeCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: const CounterCubitView(),
        ),
      ),
    );
  }

  void openArtithemeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: const ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: const SimpleInterestCubitView(),
        ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofcircleCubit,
          child: const CircleAreaCubitView(),
        ),
      ),
    );
  }

  void openTsaOfCube(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _tsaofcubeCubit,
          child: const CubeTsaCubitView(),
        ),
      ),
    );
  }
}
