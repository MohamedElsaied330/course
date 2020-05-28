import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimationContainer extends StatefulWidget {
  final Widget child;
  final int index;
  final bool vertical;
  final double distance;
  AnimationContainer(
      {this.child, this.index, this.vertical, this.distance = 100});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _classState();
  }
}

class _classState extends State<AnimationContainer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimationConfiguration.staggeredList(
      position: widget.index,
      duration: const Duration(seconds: 2),
      child: Visibility(
        child: SlideAnimation(
          verticalOffset: widget.distance,
          child: FadeInAnimation(
            child: widget.child,
          ),
        ),
        visible: widget.vertical,
        replacement: SlideAnimation(
          horizontalOffset: widget.distance,
          child: FadeInAnimation(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
