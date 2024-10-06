import 'music_service.dart';

class MusicController {
  final MusicService _service = MusicService();

  String createMusic() {
    return _service.generateMusic();
  }
}
