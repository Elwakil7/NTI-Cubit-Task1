import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Model/cubit_model.dart';
import '../Core/constants.dart';

class AppCubit extends Cubit<CubitData> {
  AppCubit()
    : super(
        CubitData(
          dayName: 'Sunday',
          num: 0,
          color: Colors.blue,
          containerColor: Colors.blue,
          counter: 0,
        ),
      );

  void changeDay() {
    int currentIndex = AppConstants.days.indexOf(state.dayName);
    int nextIndex = (currentIndex + 1) % AppConstants.days.length;
    emit(state.copyWith(dayName: AppConstants.days[nextIndex]));
  }

  void changeColor() {
    int currentIndex = AppConstants.colors.indexOf(state.containerColor);
    int nextIndex = (currentIndex + 1) % AppConstants.colors.length;
    emit(state.copyWith(containerColor: AppConstants.colors[nextIndex]));
  }

  void addCounter() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void resetAll() {
    emit(
      CubitData(
        dayName: 'Sunday',
        num: 0,
        color: Colors.blue,
        containerColor: Colors.blue,
        counter: 0,
      ),
    );
  }

  void updateDayName(String newDayName) {
    emit(state.copyWith(dayName: newDayName));
  }

  void updateDayNumber(int newNum) {
    emit(state.copyWith(num: newNum + 1));
  }

  void updateColor(Color newColor) {
    emit(state.copyWith(color: newColor));
  }

  void updateAll(String dayName, int dayNumber, Color color) {
    emit(
      CubitData(
        dayName: dayName,
        num: dayNumber,
        color: color,
        containerColor: color,
        counter: state.counter,
      ),
    );
  }
}
