import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:todolist/modules/category/datasource/remote_datasource.dart';
import 'package:todolist/utils/enums.dart';

class CategoriesProvider with ChangeNotifier {
  StateIs stateIs = StateIs.initial;
  CategoryRemoteDataSource categoryRemoteDataSource =
      CategoryRemoteDataSource();

  var data;

  void getCategories() async {
    log('Get Data');
    stateIs = StateIs.loading;
    notifyListeners();

    var result = await categoryRemoteDataSource.getCategory();
    result.fold((l) {
      stateIs = StateIs.failed;
      notifyListeners();
      log(l.toString());
    }, (r) {
      stateIs = StateIs.success;
      notifyListeners();
      log(r);
    });
  }
}
