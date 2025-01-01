part of 'student_bloc.dart';

sealed class StudentState extends Equatable {
  final List<StudentModel> students;
  final bool isLoading;

  const StudentState({
    required this.students,
    required this.isLoading,
  });

  factory StudentState.inital() {
    return const StudentState(students: [], isLoading: false);
  }

  @override
  List<Object> get props => [students, isLoading];
}

final class StudentInitial extends StudentState {}
