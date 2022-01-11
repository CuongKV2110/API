abstract class HomeEvent {
  HomeEvent([List props = const []]);

  List<Object> get props => [props];
}

class GetData extends HomeEvent{
  // final String keyword;
  // GetData(this.keyword);
}
class RefreshData extends HomeEvent{}

