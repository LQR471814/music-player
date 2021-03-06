import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player/common/components.dart';
import 'package:music_player/common/style.dart';

class IconAsset {
  static String album = 'icons/album-fill.svg';
  static String play = 'icons/play-circle-fill.svg';
  static String pause = 'icons/pause-circle-fill.svg';
  static String skipForward = 'icons/skip-forward-fill.svg';
  static String skipBackward = 'icons/skip-back-fill.svg';
  static String playlist = 'icons/play-list-fill.svg';
  static String playlistAdd = 'icons/play-list-add-line.svg';
  static String edit = 'icons/edit-2-fill.svg';
  static String delete = 'icons/delete-bin-5-fill.svg';
  static String shuffle = 'icons/shuffle-line.svg';
  static String loopDisabled = 'icons/refresh-line.svg';
  static String loopEnabled = 'icons/refresh-fill.svg';
}

class AssetIcon extends StatelessWidget {
  final String asset;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final Color? color;

  const AssetIcon({
    required this.asset,
    this.width,
    this.height,
    this.padding = EdgeInsets.zero,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shadowed(
      boxShadow: BoxShadows.regular(context),
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          asset,
          color: color ?? Theme.of(context).primaryColor,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
