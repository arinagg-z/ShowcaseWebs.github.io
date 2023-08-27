import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoplayer extends StatefulWidget {
  final String videourl;
  final String icon;
  const videoplayer({super.key, required this.videourl, required this.icon});

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late VideoPlayerController vp;
  late Future<void> intialize;

  @override
  void initState() {
    vp = VideoPlayerController.networkUrl(Uri(path: widget.videourl));
    super.initState();
    intialize = vp.initialize().then((value) {
      vp.setLooping(true);
      vp.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    vp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: intialize,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
                aspectRatio: vp.value.aspectRatio, child: VideoPlayer(vp));
          } else {
            return Image.asset(
              widget.icon,
              fit: BoxFit.cover,
            );
          }
        });
  }
}
