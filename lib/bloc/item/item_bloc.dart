import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tes_soal/models/itemModel.dart';
import 'package:tes_soal/service/itemDataService.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc() : super(ItemInitial()) {
    on<ItemEvent>((event, emit) async {
      if (event is ItemMethodGet) {
        try {
          emit(ItemLoading());
          final items = await ItemDataService().itemData();
          print(items);
          emit(ItemSuccess(items));
        } catch (e) {
          emit(ItemFailed(e.toString()));
        }
      }
    });
  }
}
