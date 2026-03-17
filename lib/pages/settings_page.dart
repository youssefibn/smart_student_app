import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Paramètres")),
      body: ListView(
        children: [
          SwitchListTile(
            value: false,
            onChanged: (v){},
            title: Text("Mode sombre", style: theme.textTheme.bodyMedium),
          ),
          SwitchListTile(
            value: true,
            onChanged: (v){},
            title: Text("Notifications", style: theme.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
