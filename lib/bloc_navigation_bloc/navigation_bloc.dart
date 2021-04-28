import 'package:bloc/bloc.dart';

import '../pages/home_page.dart';
import '../pages/my_account_page.dart';
import '../pages/my_order_page.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield AccountPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield OrderPage();
        break;
    }
  }
}
