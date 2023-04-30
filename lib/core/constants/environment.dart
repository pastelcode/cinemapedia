import 'package:flutter_dotenv/flutter_dotenv.dart';

/// All necessary environment variables for this application.
mixin Environment {
  /// The API key for accessing The Movie DB services.
  static String get theMovieDbApiKey {
    return dotenv.env['THE_MOVIE_DB_API_KEY']!;
  }
}
