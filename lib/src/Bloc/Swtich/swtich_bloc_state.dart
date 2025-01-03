import 'package:equatable/equatable.dart';

  class SwtichBlocState extends Equatable {
  final bool isEnabled;
  const SwtichBlocState({this.isEnabled = false});
  
  SwtichBlocState copyWith({bool? isEnabled}) {
    return SwtichBlocState(
      isEnabled: isEnabled ?? this.isEnabled,
    );
  }
  @override
  List<Object> get props => [isEnabled];
}


