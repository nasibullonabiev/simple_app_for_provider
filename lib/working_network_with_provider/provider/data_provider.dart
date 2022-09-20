import 'package:flutter/widgets.dart';
import 'package:simple_app_for_provider/working_network_with_provider/models/data_model.dart';
import 'package:simple_app_for_provider/working_network_with_provider/services/network_service.dart';

class DataProvider extends ChangeNotifier{
  DataModel? post;
  bool isLoading = false;

  getPostData()async{
    isLoading = true;
    post = (await getSinglePostData());
    isLoading = false;
    notifyListeners();
  }
}