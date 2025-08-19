# clean_architecture_sample

Hello there, fellow Flutter adventurers!

This repository contains the source code for the tutorial **[Clean Architecture in Flutter: Keeping Your Code Squeaky Clean!](https://medium.com/@tech.ramakant/clean-architecture-in-flutter-keeping-your-code-squeaky-clean-c77aa6241d96)** published on Medium. This code demonstrates how to apply Clean Architecture principles in Flutter, making your app structure more organized, testable, and scalable.

## Table of Contents
- [Overview](#Overview)
- [Features](#Features)
- [Installation](#Installation)
- [Usage](#Usage)
- [Contributing](#Contributing)
- [License](#License)
- [Contact](#Contact)

## Overview
As Flutter apps grow, a clean and scalable codebase becomes essential. This project introduces Clean Architecture to separate app layers and make the codebase easy to manage and extend. Each layer is independent, ensuring a separation of concerns that keeps code maintainable in the long run.

This is the accompanying code for my [article](https://medium.com/@tech.ramakant/clean-architecture-in-flutter-keeping-your-code-squeaky-clean-c77aa6241d96) that walks you through setting up Clean Architecture in Flutter, from understanding each layer to implementing it step-by-step.

## Features
- **Clean Architecture**: Separates code into data, domain, and presentation layers.
- **Repository Pattern**: Makes it easy to swap out data sources or add new ones.
- **Scalable Structure**: The app’s structure allows it to grow without sacrificing code quality.
- **Detailed Documentation**: Code is documented for easy understanding with helpful comments.

## Installation
1. Clone the repository:

    ```bash
    git clone https://github.com/tech-ramakant/clean_architecture_sample.git
    ```

2. Navigate to the project directory:

    ```bash
    cd clean_architecture_sample
    ```

3. Install the dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## Usage

Explore the code in the lib/ folder to see how Clean Architecture principles are applied across the project layers. You can follow along with the steps in the [Medium tutorial](https://medium.com/@tech.ramakant/clean-architecture-in-flutter-keeping-your-code-squeaky-clean-c77aa6241d96).

Example - Using a Use Case in Clean Architecture:

```dart
class GetCoffeeTypes {
  final CoffeeRepository repository;

  GetCoffeeTypes(this.repository);

  Future<List<Coffee>> call() async {
    return await repository.fetchCoffeeTypes();
  }
}

```
In this case, GetCoffeeTypes is a use case that gets coffee data via the CoffeeRepository without knowing where the data comes from (local or remote), keeping the code modular and testable.

## Contributing
Feel free to open issues or make pull requests to improve this project. Contributions are always welcome!

Fork the repo
- Create your branch: git checkout -b my-new-feature
- Commit your changes: git commit -am 'Add some feature'
- Push to the branch: git push origin my-new-feature
- Submit a pull request

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact
For any inquiries, feel free to reach out to me via:

- Email: [tech.ramakanttiwari@gmail.com](mailto:tech.ramakanttiwari@gmail.com)
- Medium: [@tech.ramakant](https://medium.com/@tech.ramakant)
- LinkedIn: [@tech-ramakant](https://www.linkedin.com/in/ramakant-tiwari-593479128)
- YouTube: [@Tech.Ramakant](https://www.youtube.com/@Tech.Ramakant)

