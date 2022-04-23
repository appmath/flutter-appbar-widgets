import 'package:flutter/material.dart';
import 'package:appbar_widgets/src/widgets/drawer_widget.dart';
import 'package:appbar_widgets/src/util/az_material_colors.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar Widgets',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Appbar Widgets'),
          ),
          // body: DrawerWidget(),
        ),
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
