import '../entities/coffee.dart';
import '../../data/repository/coffee_repo.dart';

class GetCoffeeTypes {
  final CoffeeRepository repository;

  GetCoffeeTypes(this.repository);

  Future<List<Coffee>> call() async {
    return await repository.fetchCoffeeTypes();
  }
}