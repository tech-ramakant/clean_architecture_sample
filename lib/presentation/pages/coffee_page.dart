import 'package:flutter/material.dart';

import '../../domain/entities/coffee.dart';
import '../../domain/usecases/get_coffee_types.dart';

class CoffeePage extends StatelessWidget {
  final GetCoffeeTypes getCoffeeTypes;

  const CoffeePage(this.getCoffeeTypes, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Available Coffee Types',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Coffee>>(
        future: getCoffeeTypes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!
                  .map((coffee) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              coffee.name,
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ),
                          const Divider(
                            color: Colors.blueGrey,
                          ),
                        ],
                      ))
                  .toList(),
            );
          } else {
            return const Text('Failed to load coffee types');
          }
        },
      ),
    );
  }
}
