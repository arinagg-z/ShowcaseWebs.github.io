import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoplayer extends StatefulWidget {
  final String videourl;
  final String icon;
  videoplayer({required this.videourl, required this.icon});

  @override
  _videoplayerState createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
