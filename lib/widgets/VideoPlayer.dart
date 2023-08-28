import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:widget_mask/widget_mask.dart';

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
    print("init");

    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videourl));
    _initializeVideoPlayerFuture = _controller.initialize().then((value) {
      _controller.setLooping(true);
      _controller.play();
    });

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
          print(widget.videourl);
          return VideoPlayer(_controller);
        } else {
          print(widget.videourl);
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
