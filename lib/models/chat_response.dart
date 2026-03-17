import 'package:json_annotation/json_annotation.dart';

part 'chat_response.g.dart';

@JsonSerializable()
class ChatResponse {
  final List<Choice> choices;

  ChatResponse({required this.choices});

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

@JsonSerializable()
class Choice {
  final ChatMessage message;

  Choice({required this.message});

  factory Choice.fromJson(Map<String, dynamic> json) =>
      _$ChoiceFromJson(json);
}

@JsonSerializable()
class ChatMessage {
  final String content;

  ChatMessage({required this.content});

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
