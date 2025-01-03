import 'package:equatable/equatable.dart';

  class SwtichBlocState extends Equatable {
  final bool isEnabled;
  final double value;
  const SwtichBlocState({this.isEnabled = false, this.value = 1.0});
  
  SwtichBlocState copyWith({bool? isEnabled, double? value}) {
    return SwtichBlocState(
      isEnabled: isEnabled ?? this.isEnabled,
      value: value ?? this.value,
    );
  }
  @override
  List<Object> get props => [isEnabled, value];
}


