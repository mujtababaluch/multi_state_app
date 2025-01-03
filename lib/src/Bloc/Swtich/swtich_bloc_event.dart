
import 'package:equatable/equatable.dart';

sealed class SwtichBlocEvent extends Equatable {
  const SwtichBlocEvent();

  @override
  List<Object> get props => [];
}

class enableordisableNotification extends SwtichBlocEvent {}


