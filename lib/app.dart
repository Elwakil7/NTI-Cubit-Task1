import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Feature/Cubit/cubit.dart';
import 'Feature/Model/cubit_model.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: BlocBuilder<AppCubit, CubitData>(
            builder: (context, state) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 150, bottom: 20),
                    child: Center(
                      child: Text(
                        'Today is, ${state.dayName}...',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: state.containerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Hello, I\'m Mohammed         El-Wakil',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Counter Number: ${state.counter}",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => context.read<AppCubit>().changeDay(),
                        child: Text(
                          'Change Day',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () => context.read<AppCubit>().changeColor(),
                        child: Text(
                          'Change Color',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => context.read<AppCubit>().addCounter(),
                        child: Text(
                          'Add Counter',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () =>
                            context.read<AppCubit>().resetAll(),
                        child: Text(
                          'Reset All',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
