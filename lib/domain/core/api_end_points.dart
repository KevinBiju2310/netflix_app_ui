import 'package:netflix_app/infrastructure/api_key.dart';
import 'package:netflix_app/presentation/core/strings.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
}