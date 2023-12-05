// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? id,
    String? title,
    String? desc,
    String? img,
    String? category,
    double? price,
    int? ranking,
    int? cal,
    int? add,
    int? vit,
    bool? isLiked,
    int? quantity,
    List<String>? images,
  })  : _id = id,
        _title = title,
        _desc = desc,
        _img = img,
        _category = category,
        _price = price,
        _ranking = ranking,
        _cal = cal,
        _add = add,
        _vit = vit,
        _isLiked = isLiked,
        _quantity = quantity,
        _images = images;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "ranking" field.
  int? _ranking;
  int get ranking => _ranking ?? 0;
  set ranking(int? val) => _ranking = val;
  void incrementRanking(int amount) => _ranking = ranking + amount;
  bool hasRanking() => _ranking != null;

  // "cal" field.
  int? _cal;
  int get cal => _cal ?? 0;
  set cal(int? val) => _cal = val;
  void incrementCal(int amount) => _cal = cal + amount;
  bool hasCal() => _cal != null;

  // "add" field.
  int? _add;
  int get add => _add ?? 0;
  set add(int? val) => _add = val;
  void incrementAdd(int amount) => _add = add + amount;
  bool hasAdd() => _add != null;

  // "vit" field.
  int? _vit;
  int get vit => _vit ?? 0;
  set vit(int? val) => _vit = val;
  void incrementVit(int amount) => _vit = vit + amount;
  bool hasVit() => _vit != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  set isLiked(bool? val) => _isLiked = val;
  bool hasIsLiked() => _isLiked != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        desc: data['desc'] as String?,
        img: data['img'] as String?,
        category: data['category'] as String?,
        price: castToType<double>(data['price']),
        ranking: castToType<int>(data['ranking']),
        cal: castToType<int>(data['cal']),
        add: castToType<int>(data['add']),
        vit: castToType<int>(data['vit']),
        isLiked: data['isLiked'] as bool?,
        quantity: castToType<int>(data['quantity']),
        images: getDataList(data['images']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProductStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'desc': _desc,
        'img': _img,
        'category': _category,
        'price': _price,
        'ranking': _ranking,
        'cal': _cal,
        'add': _add,
        'vit': _vit,
        'isLiked': _isLiked,
        'quantity': _quantity,
        'images': _images,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'ranking': serializeParam(
          _ranking,
          ParamType.int,
        ),
        'cal': serializeParam(
          _cal,
          ParamType.int,
        ),
        'add': serializeParam(
          _add,
          ParamType.int,
        ),
        'vit': serializeParam(
          _vit,
          ParamType.int,
        ),
        'isLiked': serializeParam(
          _isLiked,
          ParamType.bool,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        ranking: deserializeParam(
          data['ranking'],
          ParamType.int,
          false,
        ),
        cal: deserializeParam(
          data['cal'],
          ParamType.int,
          false,
        ),
        add: deserializeParam(
          data['add'],
          ParamType.int,
          false,
        ),
        vit: deserializeParam(
          data['vit'],
          ParamType.int,
          false,
        ),
        isLiked: deserializeParam(
          data['isLiked'],
          ParamType.bool,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        id == other.id &&
        title == other.title &&
        desc == other.desc &&
        img == other.img &&
        category == other.category &&
        price == other.price &&
        ranking == other.ranking &&
        cal == other.cal &&
        add == other.add &&
        vit == other.vit &&
        isLiked == other.isLiked &&
        quantity == other.quantity &&
        listEquality.equals(images, other.images);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        desc,
        img,
        category,
        price,
        ranking,
        cal,
        add,
        vit,
        isLiked,
        quantity,
        images
      ]);
}

ProductStruct createProductStruct({
  int? id,
  String? title,
  String? desc,
  String? img,
  String? category,
  double? price,
  int? ranking,
  int? cal,
  int? add,
  int? vit,
  bool? isLiked,
  int? quantity,
}) =>
    ProductStruct(
      id: id,
      title: title,
      desc: desc,
      img: img,
      category: category,
      price: price,
      ranking: ranking,
      cal: cal,
      add: add,
      vit: vit,
      isLiked: isLiked,
      quantity: quantity,
    );
