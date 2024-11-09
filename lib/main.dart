import 'package:flutter/material.dart';

import 'coffee_page.dart';
import 'coffee_repo.dart';
import 'get_coffee_types.dart';

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

