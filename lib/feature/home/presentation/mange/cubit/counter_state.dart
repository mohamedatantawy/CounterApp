part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class IncreamnetA extends CounterState {}
final class IncreamnetB extends CounterState {}
final class Resert extends CounterState {}