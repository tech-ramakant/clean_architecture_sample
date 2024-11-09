import 'coffee.dart';
import 'coffee_repo.dart';

class GetCoffeeTypes {
  final CoffeeRepository repository;

  GetCoffeeTypes(this.repository);

  Future<List<Coffee>> call() async {
    return await repository.fetchCoffeeTypes();
  }
}