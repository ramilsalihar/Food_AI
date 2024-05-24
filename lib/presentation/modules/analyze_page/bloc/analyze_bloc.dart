
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'analyze_event.dart';
part 'analyze_state.dart';

class AnalyzeBloc extends Bloc<AnalyzeEvent, AnalyzeState> {
  AnalyzeBloc() : super(AnalyzeInitial()) {
    on<AnalyzeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
