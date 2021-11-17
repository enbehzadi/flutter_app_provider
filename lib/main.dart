// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_provider/counter_model.dart';
import 'package:flutter_app_provider/counter_view.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => counter_model()),
      ],
      child:
      MaterialApp(
        home: counter_view(),
      ),
    ),
  );
}

