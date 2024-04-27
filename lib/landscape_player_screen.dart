import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../const/colors/colors.dart';
import 'landscape_controller.dart';
import 'video_player_controller.dart';
import 'landscape_video.dart';

// ignore: must_be_immutable
class LandscapePlayer extends StatefulWidget {
  final Color? controlsColor;
  final Color? primaryColor;
  final Color? textColor;
  LandscapePlayer({
    super.key,
    this.controlsColor,
    this.primaryColor,
    this.textColor,
  });

  @override
  State<LandscapePlayer> createState() => _LandscapePlayerState();
}

class _LandscapePlayerState extends State<LandscapePlayer> {
  LandscapeController controller = Get.put(LandscapeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Get.find<VideoPlayerSreenController>().isInitialized.value
            ? LandscapeVideo(
                controlsColor: widget.controlsColor,
                primaryColor: widget.primaryColor,
                textColor: widget.textColor,
              )
            : Container(
                color: Colors.black,
                child: Center(
                    child: CircularProgressIndicator(
                  color: widget.primaryColor,
                ))),
      ),
    );
  }
}
