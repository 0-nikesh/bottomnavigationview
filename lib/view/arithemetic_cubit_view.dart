import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  ArithmeticCubitView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController AgeController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Cubit'),
      ),
      body: Column(
        children: [
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: 'Enter first number',
          //   ),
          //   controller: nameController,
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: 'Enter second number',
          //   ),
          //   controller: AgeController,
          // ),

          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
            controller: nameController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Age',
            ),
            controller: AgeController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Address',
            ),
            controller: AddressController,
          ),
          const SizedBox(height: 20),
          BlocBuilder<ArithmeticCubit, int>(builder: (context, int state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // final String nameController = String.parse(nameController.text);
              // final int ageController = int.parse(AgeController.text);
              // final
              // context.read<ArithmeticCubit>().add(firstNumber, secondNumber);
            },
            child: const Text('SUbmit'),
          ),
          const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     final int firstNumber = int.parse(nameController.text);
          //     final int secondNumber = int.parse(AgeController.text);
          //     context
          //         .read<ArithmeticCubit>()
          //         .subtract(firstNumber, secondNumber);
          //   },
          //   child: const Text('Subtract'),
          // ),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     final int firstNumber = int.parse(nameController.text);
          //     final int secondNumber = int.parse(AgeController.text);
          //     context
          //         .read<ArithmeticCubit>()
          //         .multiply(firstNumber, secondNumber);
          //   },
          //   child: const Text('Multiply'),
          // ),
        ],
      ),
    );
  }
}
