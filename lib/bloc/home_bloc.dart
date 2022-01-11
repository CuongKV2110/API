import 'package:api_5/modules/item.dart';
import 'package:api_5/modules/response/home_response.dart';
import 'package:api_5/providers/home_provider.dart';
import 'package:bloc/bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late HomeProvider _homeProvider;

  List<Item> items = [];


  HomeBloc(Initial initial) : super(initial) {
    _homeProvider = HomeProvider();
  }

  void dispose() {
    close();
  }

  HomeState get initialState => Initial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetData) {
      yield HomeProcess();

      await Future.delayed(const Duration(milliseconds: 1500), () {});

      var res = await _homeProvider.getData();

      if (res.success) {
        items = (res as HomeResponse).data;
        yield HomeSuccess();
      } else {
        yield HomeFail(errorMessage: "Da co loi xay ra, Vui long thu lai");
      }
    }

    if (event is RefreshData) {

    }
  }
}
