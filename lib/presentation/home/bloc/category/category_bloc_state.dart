part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {
  const factory CategoryBlocState.initial() = _Initial;
  const factory CategoryBlocState.loading() = _Loading;
  const factory CategoryBlocState.loaded(List <Category> categories) = _Loaded;
  const factory CategoryBlocState.error(String message) = _Error;
}
