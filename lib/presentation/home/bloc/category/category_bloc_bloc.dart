// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_onlineshop_app/data/datasources/category_remote_datasource.dart';
// import 'package:http/http.dart';

import '../../../../data/models/responses/category_response_model.dart';

part 'category_bloc_bloc.freezed.dart';
part 'category_bloc_event.dart';
part 'category_bloc_state.dart';

class CategoryBlocBloc extends Bloc<CategoryBlocEvent, CategoryBlocState> {
  final CategoryRemoteDatasource _categoryRemoteDatasource;
  CategoryBlocBloc(
    this._categoryRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetCategories>((event, emit) async {
      final response = await _categoryRemoteDatasource.getCategories();
      response.fold(
        (l) => emit(const CategoryBlocState.error('Internal Server Error')),
        (r) => emit(CategoryBlocState.loaded(r.data!)),
      );
    });
  }
}
