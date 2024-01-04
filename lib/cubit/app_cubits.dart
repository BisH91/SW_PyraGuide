import 'package:bloc/bloc.dart';
import 'package:test_homsa/cubit/app_cubit_states.dart';
import 'package:test_homsa/model/data_model.dart';
import 'package:test_homsa/pages/detail_page.dart';
import 'package:test_homsa/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
