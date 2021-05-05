import 'package:bloc/bloc.dart';

import '../pages/home_page.dart';
import '../pages/my_account_page.dart';
import '../pages/result_exam_page.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  AccountClickedEvent,
  ResultExamClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.AccountClickedEvent:
        yield AccountPage();
        break;
      case NavigationEvents.ResultExamClickedEvent:
        yield ResultExam();
        break;
    }
  }
}
