import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayButtonWidget extends StatefulWidget {
  const PlayButtonWidget({super.key});

  @override
  State<PlayButtonWidget> createState() => _PlayButtonWidgetState();
}

class _PlayButtonWidgetState extends State<PlayButtonWidget> {
  final AudioPlayer _player = AudioPlayer();
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initAndPlay();
  }

  Future<void> _initAndPlay() async {
    try {
      await _player.setUrl(
        "https://edge.mixlr.com/channel/hqpry",
      ); // 👈 stream link
      await _player.play(); // auto-play
      setState(() {
        _isPlaying = true;
      });
    } catch (e) {
      debugPrint("Error loading audio: $e");
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _togglePlayPause() async {
    if (_isPlaying) {
      await _player.pause();
    } else {
      await _player.play();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFFFF7E17),
        padding: const EdgeInsets.all(14),
      ),
      onPressed: _togglePlayPause,
      child: Icon(
        _isPlaying ? Icons.pause : Icons.play_arrow,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
