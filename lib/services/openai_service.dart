import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/chat_response.dart';

part 'openai_service.g.dart';

@RestApi(baseUrl: "https://api.openai.com/v1")
abstract class OpenAIService {
  factory OpenAIService(Dio dio, {String baseUrl}) = _OpenAIService;

  @POST("/chat/completions")
  Future<ChatResponse> sendMessage(
      @Body() Map<String, dynamic> body,
      );
}
