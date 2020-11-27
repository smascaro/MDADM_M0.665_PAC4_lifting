import 'package:flutter/material.dart';
import 'blue_widget.dart';

class GreenWidget extends StatelessWidget {
  Function _updateCounter;
  GreenWidget(this._updateCounter);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      child: BlueWidget(_updateCounter),
    );
  }
}
