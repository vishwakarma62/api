import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'conduit_event.dart';
part 'conduit_state.dart';

class ConduitBloc extends Bloc<ConduitEvent, ConduitState> {
  ConduitBloc() : super(ConduitLoadingState()) {
    on<ConduitLoadingEvent>((event, emit) {

    });
  }
}
