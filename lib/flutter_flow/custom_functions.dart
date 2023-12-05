import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

double? getTotalCart(List<ProductStruct>? products) {
  // If the products list is null or empty, return 0
  if (products == null || products.isEmpty) {
    return 0.0;
  }

  // Use fold to calculate the sum of prices considering quantity
  double total = products.fold(0.0, (double sum, ProductStruct product) {
    return sum + (product.price * product.quantity);
  });

  // Limit the result to 2 decimal places
  return double.parse(total.toStringAsFixed(2));
}

int? getTotalItemsCart(List<ProductStruct>? products) {
  if (products == null || products.isEmpty) {
    return 0;
  }

  int totalItems = products.fold(0, (int sum, ProductStruct product) {
    return sum + product.quantity;
  });

  return totalItems;
}

int? strToInt(String number) {
  return int.tryParse(number) ?? 1;
}

int? getQuantity() {
  return 1;
}
