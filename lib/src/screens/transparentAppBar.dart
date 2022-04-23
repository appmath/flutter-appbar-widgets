import 'package:flutter/material.dart';
import 'package:appbar_widgets/src/widgets/drawer_widget.dart';
import 'package:appbar_widgets/src/util/az_material_colors.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
class TransparentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Appbar Widgets',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text('Transparent AppBar'),
            leading: const BackButton(),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            backgroundColor: Colors.transparent,
            // elevation: 0,
          ),
          body: Image.network(
            'https://source.unsplash.com/random?sig=1',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
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
