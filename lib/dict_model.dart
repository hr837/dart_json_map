import 'package:dart_json_mapper/dart_json_mapper.dart';

/// 数据字典
@jsonSerializable
class DictModel {
  final Map<String, List<DictItemModel>> _list = {};

  @jsonProperty
  void listSet(String name, dynamic value) {
    _list[name] = JsonMapper.deserialize<List<DictItemModel>>(value) ?? [];
  }

  @jsonProperty
  Map<String, List<DictItemModel>> listGet() {
    return _list;
  }

  List<DictItemModel> getDictData(String name) => _list[name] ?? [];
}

/// 字典项
@jsonSerializable
class DictItemModel {
  String name;
  String code;

  DictItemModel(this.name, this.code);
}
