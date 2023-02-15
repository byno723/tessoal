part of 'item_bloc.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemFailed extends ItemState {
  final String e;
  ItemFailed(this.e);
  @override
  // TODO: implement props
  List<Object> get props => [e];
}

class ItemSuccess extends ItemState {
  final List<ItemModel> items;
  ItemSuccess(this.items);

  @override
  // TODO: implement props
  List<Object> get props => [items];
}
