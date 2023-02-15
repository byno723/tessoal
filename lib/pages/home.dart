import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tes_soal/bloc/item/item_bloc.dart';
import 'package:tes_soal/models/itemModel.dart';
import 'package:tes_soal/widgets/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ItemModel? itemModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            BlocProvider(
              create: (context) => ItemBloc()..add(ItemMethodGet()),
              child: BlocBuilder<ItemBloc, ItemState>(
                builder: (context, state) {
                  if (state is ItemSuccess) {
                    return Column(
                        children: state.items.map((item) {
                      return ItemData(
                        itemModel: item,
                      );
                    }).toList());
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
