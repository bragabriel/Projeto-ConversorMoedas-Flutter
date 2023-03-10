// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

import '../models/currency_model.dart';

class HomeController {
  List<CurrencyModel> currencies = List.empty();

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({
    required this.toText,
    required this.fromText,
    required this.toCurrency,
    required this.fromCurrency,
  }) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void converter(){
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0.0;

    if(fromCurrency.name == 'Real'){
      returnValue = value * toCurrency.real;
    }else if(fromCurrency.name == 'Dolar'){
      returnValue = value * toCurrency.dolar;
    }else if(fromCurrency.name == 'Euro'){
      returnValue = value * toCurrency.euro;
    }else if(fromCurrency.name == 'Bitcoin'){
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
