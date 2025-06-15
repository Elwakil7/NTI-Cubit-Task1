import 'package:flutter/material.dart';

class CubitData {
  final String dayName;
  final Color color;
  final Color containerColor;
  final int num;
  final int counter;

  CubitData({
    required this.dayName,
    required this.color,
    required this.containerColor,
    required this.num,
    required this.counter,
  });

  CubitData copyWith({
    String? dayName,
    Color? color,
    Color? containerColor,
    int? num,
    int? counter,
  }) {
    return CubitData(
      dayName: dayName ?? this.dayName,
      color: color ?? this.color,
      containerColor: containerColor ?? this.containerColor,
      num: num ?? this.num,
      counter: counter ?? this.counter,
    );
  }
}
