import 'package:flutter/material.dart';
import 'package:tes_soal/models/itemModel.dart';
import 'package:tes_soal/shared/theme.dart';

class ItemData extends StatelessWidget {
  final bool isSelected;
  final ItemModel itemModel;

  const ItemData({
    Key? key,
    required this.itemModel,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemModel.nama.toString(),
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    itemModel.status.toString(),
                    style: greyTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              itemModel.country == "Indonesia"
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfKTaFcomMHbffdJNHYcCuQT7wZQBdZy52dA&usqp=CAU",
                      height: 30,
                    )
                  : Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP70FPnRrtnS6CZCwrnuMeXN7p_FPjuW4MLg&usqp=CAU",
                      height: 30,
                    ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Netto",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(itemModel.netto.toString())
                ],
              ),
              Column(
                children: [
                  Text(
                    "Broto",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(itemModel.broto.toString())
                ],
              ),
              Column(
                children: [
                  Text(
                    "Tax",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(itemModel.pajak.toString())
                ],
              ),
              itemModel.country == "Vietnam"
                  ? Column(
                      children: [
                        Text(
                          "Asuransi",
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(itemModel.asuransi.toString())
                      ],
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
