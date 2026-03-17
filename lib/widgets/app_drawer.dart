import 'package:flutter/material.dart';
import '../pages/profile_page.dart';
import '../pages/settings_page.dart';
import '../pages/about_page.dart';
import '../pages/chatbot_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Drawer(
      child: ListView(
        children: [

      UserAccountsDrawerHeader(
      decoration: BoxDecoration(
      color: theme.colorScheme.primary,
      ),
      accountName: const Text("Student Ibnadam"),
      accountEmail: const Text("ibnadam@mail.com"),
      // Remplacement de l'icône par votre image
      currentAccountPicture: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/kalila.jpg'),
      ),
    ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profil"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ProfilePage()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Paramètres"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("À propos"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AboutPage()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text("Chatbot"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatbotPage()));
            },
          ),
        ],
      ),
    );
  }
}
