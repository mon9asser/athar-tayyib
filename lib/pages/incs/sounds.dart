import 'package:flutter/material.dart';
import 'mp3.dart';
import 'package:audioplayers/audioplayers.dart';



class SoundMp3 extends StatefulWidget {
  final String path;
  final Color color;

  const SoundMp3({
    super.key,
    required this.path,
    required this.color,
  });

  @override
  State<SoundMp3> createState() => _SoundMp3State();
}

class _SoundMp3State extends State<SoundMp3> {
  @override
  void initState() {
    super.initState();
    // listen for track changes
    AudioService.currentTrack.addListener(_update);
  }

  void _update() {
    setState(() {}); // rebuild to update icon
  }

  void toggleAudio() async {
    if (AudioService.isPlaying(widget.path)) {
      await AudioService.pause();
    } else {
      await AudioService.play(widget.path);
    }
  }

  @override
  void dispose() {
    AudioService.currentTrack.removeListener(_update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isPlaying = AudioService.isPlaying(widget.path);

    return IconButton(
      icon: Icon(isPlaying ? Icons.pause : Icons.play_circle),
      color: widget.color,
      iconSize: 55,
      onPressed: toggleAudio,
    );
  }
}

class AudioService {
  static final AudioPlayer _player = AudioPlayer();
  static String? _currentPath; // currently playing track path

  // notifier for UI
  static final ValueNotifier<String?> currentTrack = ValueNotifier(null);

  static Future<void> play(String path) async {
    if (_currentPath != path) {
      // stop old audio
      await _player.stop();
      _currentPath = path;
    }
    await _player.play(AssetSource(path));
    _currentPath = path;

    // notify listeners that current track changed
    currentTrack.value = _currentPath;
  }

  static Future<void> pause() async {
    await _player.pause();
    // notify listeners that playback paused
    currentTrack.value = null;
  }

  static bool isPlaying(String path) {
    return _currentPath == path && _player.state == PlayerState.playing;
  }
}
