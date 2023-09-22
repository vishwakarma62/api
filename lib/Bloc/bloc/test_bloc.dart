import 'package:api/model/itemmodel.dart';
import 'package:api/model/model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(LoadState(loaddata: itemdata)) {
    on<LoadDataEvent>((event, emit) {
  
      emit(LoadState(loaddata: itemdata));
      
    
    });
  }
}
