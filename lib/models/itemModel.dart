import 'dart:convert';

class ItemModel {
  final int? id;
  final String? nama;
  final String? status;
  final int? broto;
  final int? netto;
  final int? pajak;
  final String? country;
  final int? asuransi;

  ItemModel(
      {this.id,
      this.nama,
      this.status,
      this.broto,
      this.netto,
      this.pajak,
      this.country,
      this.asuransi});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
      id: json['id'],
      nama: json['nama'],
      status: json['status'],
      broto: json['broto'],
      netto: json['netto'],
      pajak: json['pajak'],
      asuransi: json['asuransi'],
      country: json['country']);
}
