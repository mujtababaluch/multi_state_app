import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multistateapp/src/Bloc/bloc/swtich_bloc_event.dart';
import 'package:multistateapp/src/Bloc/bloc/swtich_bloc_state.dart';

class SwtichBloc extends Bloc<SwtichBlocEvent, SwtichBlocState> {
  SwtichBloc() : super(const SwtichBlocState()){
    on<enableordisableNotification>(_enableordisableNotification);
  }

  void _enableordisableNotification(SwtichBlocEvent event, Emitter<SwtichBlocState> emit) {
    emit(state.copyWith(isEnabled: !state.isEnabled));
  }
}