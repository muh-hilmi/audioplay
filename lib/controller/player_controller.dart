import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:just_audio/just_audio.dart';
import 'package:permission_handler/permission_handler.dart';

class PlayerController extends GetxController {
  final audioPlayer = AudioPlayer();
  final onAudioQuery = OnAudioQuery();

  @override
  void onInit() {
    super.onInit();
    permissionHandler();
  }

  void permissionHandler() async {
    var permission = await Permission.storage.request();

    if (!permission.isGranted) {
      permissionHandler();
    }
  }
}
