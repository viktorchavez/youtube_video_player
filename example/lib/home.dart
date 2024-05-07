import 'package:flutter/material.dart';
import 'package:youtube_video_player/portrait_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? link;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Player Example"),
      ),
      body: Column(
        children: [
          link != null
              ? PortraitPlayer(
                  link: link!,
                  aspectRatio: 16 / 9,
                  controlsColor: Colors.greenAccent,
                  primaryColor: Colors.red,
                  textColor: Colors.grey)
              : Container(),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                suffix: IconButton.filledTonal(
                    onPressed: () {
                      setState(() {
                        link = controller.text;
                      });
                    },
                    icon: const Icon(Icons.add))),
          )
        ],
      ),
    );
  }
}
