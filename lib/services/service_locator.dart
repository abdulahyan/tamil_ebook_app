import 'package:audio_service/audio_service.dart';
import 'package:ebooks/services/audio_handler.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<AudioHandler> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AudioHandler>(await initAudioService());
}
