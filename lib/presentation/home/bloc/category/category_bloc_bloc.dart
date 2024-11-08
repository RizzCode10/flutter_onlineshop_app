import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/responses/category_response_model.dart';

part 'category_bloc_event.dart';
part 'category_bloc_state.dart';
part 'category_bloc_bloc.freezed.dart';

class CategoryBlocBloc extends Bloc<CategoryBlocEvent, CategoryBlocState> {
  CategoryBlocBloc() : super(_Initial()) {
    on<CategoryBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
