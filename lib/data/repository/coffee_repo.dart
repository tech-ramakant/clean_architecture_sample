import '../../domain/entities/coffee.dart';

abstract class CoffeeRepository {
  Future<List<Coffee>> fetchCoffeeTypes();
}

// Implementation of CoffeeRepository, fetching data locally for now
class LocalCoffeeRepository implements CoffeeRepository {
  @override
  Future<List<Coffee>> fetchCoffeeTypes() async {
    await Future.delayed(const Duration(seconds: 2));
    return [Coffee('Espresso'), Coffee('Latte'), Coffee('Cappuccino')];
  }
}