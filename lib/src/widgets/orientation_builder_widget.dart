import 'package:flutter/material.dart';

/// Shows a text that says Portrait or Landscape depending on the orientation
class OrientationBuilderWidget extends StatefulWidget {
  const OrientationBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OrientationBuilderWidget> createState() =>
      _OrientationBuilderWidgetState();
}

class _OrientationBuilderWidgetState extends State<OrientationBuilderWidget> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        bool isPortrait = orientation == Orientation.portrait;

        return Center(
          child: Container(
            color: Colors.green,
            child: getText(isPortrait ? 'Portrait' : 'Landscape'),
          ),
        );
      });

  Center getText(String title) => Center(
          child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ));
}
