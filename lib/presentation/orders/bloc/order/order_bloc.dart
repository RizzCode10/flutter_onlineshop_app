import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/responses/order_response_model.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(_Initial()) {
    on<OrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
