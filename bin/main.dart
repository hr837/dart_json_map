import 'dart:io';

import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:json_test/dict_model.dart';

import 'main.mapper.g.dart';

Future<String> loadData() => File("assets/dict.json").readAsString();

void main(List<String> arguments) async {
  initializeJsonMapper();

  var jsonStr = await loadData();

  final data = JsonMapper.deserialize<DictModel>(jsonStr);
  // test data type
  print(data);

  // assert -> code:FOREVER,name:永久
  var first = data?.getDictData('ExpireType').first;
  print('code:${first?.code},name:${first?.name}');
}
