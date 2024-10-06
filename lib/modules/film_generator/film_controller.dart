import 'film_service.dart';

class FilmController {
  final FilmService _service = FilmService();

  String produceFilm() {
    return _service.createFilm();
  }
}
