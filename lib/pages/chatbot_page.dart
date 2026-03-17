import 'package:flutter/material.dart';
import '../services/openai_service.dart';
import '../services/dio_client.dart';
import '../models/chat_response.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final controller = TextEditingController();
  String response = "";
  bool loading = false;

  late OpenAIService api;

  @override
  void initState() {
    super.initState();
    api = OpenAIService(createDio());
  }

  Future<void> ask() async {
    setState(() => loading = true);

    try {
      ChatResponse res = await api.sendMessage({
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            "role": "user",
            "content": controller.text,
          }
        ]
      });

      setState(() {
        response = res.choices.first.message.content;
        loading = false;
      });
    } catch (e) {
      setState(() {
        response = "Erreur lors de la communication avec l'API";
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Chatbot")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Votre question",
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: loading ? null : ask,
              child: const Text("Envoyer"),
            ),
            const SizedBox(height: 20),
            if (loading)
              const CircularProgressIndicator()
            else
              Text(
                response,
                style: theme.textTheme.bodyMedium,
              ),
          ],
        ),
      ),
    );
  }
}
