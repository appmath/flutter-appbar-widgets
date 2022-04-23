import 'package:flutter/material.dart';
import 'package:appbar_widgets/src/util/az_material_colors.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///
/// AppBar with some extra features:
///
/// * A leading button on the left of the title
/// * A couple of icons on the right (under actions)
class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3(context);
  }

  MaterialApp buildMaterialApp3(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar Widgets',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Appbar Widgets'),
            backgroundColor: blueMaterialColor,
            // Not sure about this one, extends the appBar.
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: Container(),
            ),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active),
              ),
            ]),
      ),
    );
  }

  Center getText(String title) => Center(
          child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ));
}
