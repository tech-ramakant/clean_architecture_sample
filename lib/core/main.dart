import 'package:flutter/material.dart';

import '../presentation/pages/coffee_page.dart';
import '../data/repository/coffee_repo.dart';
import '../domain/usecases/get_coffee_types.dart';

void main() {
  final repository = LocalCoffeeRepository();
  final getCoffeeTypes = GetCoffeeTypes(repository);

  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    home: CoffeePage(getCoffeeTypes),
  ));
}
