import 'package:redux/redux.dart';
import 'package:cat_dog/common/state.dart';
import 'package:cat_dog/common/repository.dart';

class SetUserLanguage {
  final String language;
  SetUserLanguage(this.language);
}

class SetAboutInformation {
  final String data;
  SetAboutInformation(this.data);
}

class SetFirstOpen {
  final bool first;
  SetFirstOpen(this.first);
}

class AddReadingCount {
  AddReadingCount();
}

class ClearReadingCount {
  ClearReadingCount();
}

final Function actionSetUserLanguage = (String language) {
  return (Store<AppState> store) {
    if (language != '') {
      store.dispatch(new SetUserLanguage(language));
    }
  };
};

final Function getAboutAction = () {
  return (Store<AppState> store) async {
    var result = await fetchAboutInformation();
    store.dispatch(SetAboutInformation(result));
  };
};

final Function setFirstOpenAction = () {
  return (Store<AppState> store) async {
    store.dispatch(SetFirstOpen(false));
  };
};

final Function addReadingCountAction = () {
  return (Store<AppState> store) async {
    store.dispatch(AddReadingCount());
  };
};

final Function clearReadingCountAction = () {
  return (Store<AppState> store) async {
    store.dispatch(ClearReadingCount());
  };
};