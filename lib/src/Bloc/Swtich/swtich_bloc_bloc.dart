import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multistateapp/src/Bloc/Swtich/swtich_bloc_event.dart';
import 'package:multistateapp/src/Bloc/Swtich/swtich_bloc_state.dart';

class SwtichBloc extends Bloc<SwtichBlocEvent, SwtichBlocState> {
  SwtichBloc() : super(const SwtichBlocState()){
    on<enableordisableNotification>(_enableordisableNotification);
    on<controlOpacityEvent>(_controlOpacity);
  }

  void _enableordisableNotification(SwtichBlocEvent event, Emitter<SwtichBlocState> emit) {
    emit(state.copyWith(isEnabled: !state.isEnabled));
  }

  void _controlOpacity(controlOpacityEvent event, Emitter<SwtichBlocState> emit) {
      print( "value is ${event.value}");
      emit(state.copyWith(value: event.value));
  }
}