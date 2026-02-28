
import 'package:audioplayers/audioplayers.dart';

// all audios
Map<String, Map<String, dynamic>> AllTracks = {
  'doa': {
    'path': 'mp4/doa.mp3',
    'title': 'الدعاء',
  },
  'fatiha': {
    'path': 'mp4/fatiha.mp3',
    'title': 'سورة الفاتحة'
  },
  'kol-hoa-all-ahad': {
    'path': 'mp4/kol-hoa-all-ahad.mp3',
    'title': 'سورة الإخلاص',
  },
  'elfalak': {
    'path': 'mp4/elfalak.mp3',
    'title': 'سورة الفلق',
  },
  'elnas': {
    'path': 'mp4/elnas.mp3',
    'title': 'سورة الناس',
  },
  'korsy-sora': {
    'path': 'mp4/korsy-sora.mp3',
    'title': 'آية الكرسي',
  },
};


Future<Duration?> getAssetDuration(String path) async {
  final player = AudioPlayer();
  await player.setSource(AssetSource(path));
  Duration? duration = await player.getDuration();
  await player.dispose();
  return duration;
}