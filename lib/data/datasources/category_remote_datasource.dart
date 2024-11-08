import 'package:dartz/dartz.dart';
import 'package:flutter_onlineshop_app/data/models/responses/category_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';

class CategoryRemoteDatasource {
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    // final url = Uri.parse('${Variables.baseUrl}/api/categories');
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/categories'));
    
    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}