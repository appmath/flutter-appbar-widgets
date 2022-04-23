import 'package:appbar_widgets/src/widgets/orientation_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:appbar_widgets/src/util/az_material_colors.dart';
import 'package:appbar_widgets/src/widgets/drawer_widget.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///  Sliver AppBar, relies on [NestedScrollView] and [SliverAppBar]
class MySliverAppBar extends StatefulWidget {
  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SliverAppBar',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            // drawer: DrawerWidget(),
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [
                SliverAppBar(
                  expandedHeight: 240,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text('SliverAppBar'),
                    background: Image.network(
                      'https://source.unsplash.com/random?sig=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                  floating: true,
                  // AppBar appears immediately
                  snap: true,
                  // AppBar displayed 0% or 100%
                  pinned: true, // AppBar pinned to the top
                )
              ],
              body: ListView.separated(
                padding: const EdgeInsets.all(12),
                itemCount: 30,
                itemBuilder: (context, index) =>
                    ListTile(
                      title: Text('Item $index'),
                    ),
                separatorBuilder: (context, index) =>
                const SizedBox(
                  width: 10,
                  height: 20,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Center getText(String title) =>
      Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ));
}
