import 'package:bloc/bloc.dart';
import 'package:flutter_onlineshop_app/data/datasources/address_remote_datasource.dart';
import 'package:flutter_onlineshop_app/data/models/requests/address_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';
part 'add_address_bloc.freezed.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRemoteDataSource addressRemoteDataSource;
  AddAddressBloc(
    this.addressRemoteDataSource,
  ) : super(const _Initial()) {
    on<_AddAddress>((event, emit) async {
      emit(const _Loading());
      final response =
          await addressRemoteDataSource.addAddress(event.addressRequestModel);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Loaded()),
      );
    });
  }
}
