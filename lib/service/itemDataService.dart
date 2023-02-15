import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tes_soal/models/itemModel.dart';

import '../shared/shared_values.dart';

class ItemDataService {
  Future<List<ItemModel>> itemData() async {
    try {
      final res = await http.get(Uri.parse('$baseUrl/tes'));

      if (res.statusCode == 200) {
        return List<ItemModel>.from(jsonDecode(res.body)
            .map((item) => ItemModel.fromJson(item))
            .toList());
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
