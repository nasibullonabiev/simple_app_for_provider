import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../models/data_model.dart';
import 'package:http/http.dart' as http;
Future<DataModel?> getSinglePostData()async{
  DataModel? result;
  try{
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      }
    );
    if(response.statusCode == 200){
      final item = json.decode(response.body);
      result = DataModel.fromJson(item);
    }else{
      debugPrint("error");
    }
  }catch(e){
    debugPrint(e.toString());
  }
  return result;
}