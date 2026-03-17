import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      drawer: const AppDrawer(),

      body: Center(
        child: Text(
          "Bienvenue dans Smart Student Assistant",
          style: theme.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
