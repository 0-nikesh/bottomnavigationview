import 'package:bloc/bloc.dart';
import 'package:bottomnavigationview/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<StudentEvent>((event, emit) {});
  }
}
