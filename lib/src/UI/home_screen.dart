import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multistateapp/src/Bloc/Swtich/swtich_bloc_bloc.dart';
import 'package:multistateapp/src/Bloc/Swtich/swtich_bloc_event.dart';
import 'package:multistateapp/src/Bloc/Swtich/swtich_bloc_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body:  Column(
        children: [
          BlocBuilder<SwtichBloc,SwtichBlocState>(
            buildWhen: (previous, current) => previous.isEnabled != current.isEnabled,
            builder: (context, state){
               print("rebuilding slider state2");
              return Switch(
                value: state.isEnabled,
                onChanged: (value) => context.read<SwtichBloc>().add(enableordisableNotification()),
              );
            },),

          BlocBuilder<SwtichBloc,SwtichBlocState>(
            buildWhen:  (previous, current) => previous.value != current.value,
            builder: (context, state) {
              return  Container(
          color: Colors.deepPurple.withOpacity(state.value),
          height: 200,
          );
            },
          ),
          BlocBuilder<SwtichBloc,SwtichBlocState>(
            buildWhen: (previous, current) => previous.value != current.value,
            builder:  (context, state)  {
              print("rebuilding slider state");
              return Slider(
                value: state.value,
  onChanged: (value) {
        print('Slider moved to $value');
        // Dispatching the event
        context.read<SwtichBloc>().add(controlOpacityEvent(value));
      },              );
            }),
          
        ],
      ),
    );
  }
}