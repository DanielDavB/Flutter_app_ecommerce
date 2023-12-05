import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _productsList = prefs
              .getStringList('ff_productsList')
              ?.map((x) {
                try {
                  return ProductStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _productsList;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectedProduct')) {
        try {
          final serializedData = prefs.getString('ff_selectedProduct') ?? '{}';
          _selectedProduct =
              ProductStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _cartList = prefs
              .getStringList('ff_cartList')
              ?.map((x) {
                try {
                  return ProductStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartList;
    });
    _safeInit(() {
      _categorySelected =
          prefs.getString('ff_categorySelected') ?? _categorySelected;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ProductStruct> _productsList = [];
  List<ProductStruct> get productsList => _productsList;
  set productsList(List<ProductStruct> _value) {
    _productsList = _value;
    prefs.setStringList(
        'ff_productsList', _value.map((x) => x.serialize()).toList());
  }

  void addToProductsList(ProductStruct _value) {
    _productsList.add(_value);
    prefs.setStringList(
        'ff_productsList', _productsList.map((x) => x.serialize()).toList());
  }

  void removeFromProductsList(ProductStruct _value) {
    _productsList.remove(_value);
    prefs.setStringList(
        'ff_productsList', _productsList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductsList(int _index) {
    _productsList.removeAt(_index);
    prefs.setStringList(
        'ff_productsList', _productsList.map((x) => x.serialize()).toList());
  }

  void updateProductsListAtIndex(
    int _index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    _productsList[_index] = updateFn(_productsList[_index]);
    prefs.setStringList(
        'ff_productsList', _productsList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductsList(int _index, ProductStruct _value) {
    _productsList.insert(_index, _value);
    prefs.setStringList(
        'ff_productsList', _productsList.map((x) => x.serialize()).toList());
  }

  ProductStruct _selectedProduct = ProductStruct();
  ProductStruct get selectedProduct => _selectedProduct;
  set selectedProduct(ProductStruct _value) {
    _selectedProduct = _value;
    prefs.setString('ff_selectedProduct', _value.serialize());
  }

  void updateSelectedProductStruct(Function(ProductStruct) updateFn) {
    updateFn(_selectedProduct);
    prefs.setString('ff_selectedProduct', _selectedProduct.serialize());
  }

  List<ProductStruct> _cartList = [];
  List<ProductStruct> get cartList => _cartList;
  set cartList(List<ProductStruct> _value) {
    _cartList = _value;
    prefs.setStringList(
        'ff_cartList', _value.map((x) => x.serialize()).toList());
  }

  void addToCartList(ProductStruct _value) {
    _cartList.add(_value);
    prefs.setStringList(
        'ff_cartList', _cartList.map((x) => x.serialize()).toList());
  }

  void removeFromCartList(ProductStruct _value) {
    _cartList.remove(_value);
    prefs.setStringList(
        'ff_cartList', _cartList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartList(int _index) {
    _cartList.removeAt(_index);
    prefs.setStringList(
        'ff_cartList', _cartList.map((x) => x.serialize()).toList());
  }

  void updateCartListAtIndex(
    int _index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    _cartList[_index] = updateFn(_cartList[_index]);
    prefs.setStringList(
        'ff_cartList', _cartList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartList(int _index, ProductStruct _value) {
    _cartList.insert(_index, _value);
    prefs.setStringList(
        'ff_cartList', _cartList.map((x) => x.serialize()).toList());
  }

  ProductStruct _newProduct = ProductStruct();
  ProductStruct get newProduct => _newProduct;
  set newProduct(ProductStruct _value) {
    _newProduct = _value;
  }

  void updateNewProductStruct(Function(ProductStruct) updateFn) {
    updateFn(_newProduct);
  }

  String _categorySelected = 'Dried fruit';
  String get categorySelected => _categorySelected;
  set categorySelected(String _value) {
    _categorySelected = _value;
    prefs.setString('ff_categorySelected', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
