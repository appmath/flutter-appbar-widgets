import 'package:appbar_widgets/src/widgets/orientation_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:appbar_widgets/src/util/az_material_colors.dart';
import 'package:appbar_widgets/src/widgets/drawer_widget.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///
/// DefaultTabController -> Scaffold
///
///   * appBar -> bottom: TabBar
///   * TabBarView -> children
///
/// Each tab bar is associated with
class MyTabBar extends StatefulWidget {
  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppSliverBar Widgets',
        // The Mandy red, light theme.
        theme: ThemeData(
          colorSchemeSeed: blueMaterialColor,
          useMaterial3: true,
        ),
        home: Builder(
            builder: (context) => DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    // drawer: DrawerWidget(),
                    appBar: AppBar(
                      title: const Text('TabBar'),
                      bottom: const TabBar(
                        tabs: [
                          Tab(
                            text: 'Tab 1',
                            icon: Icon(Icons.home),
                          ),
                          Tab(
                            text: 'Tab 2',
                            icon: Icon(Icons.star),
                          ),
                          Tab(
                            text: 'Tab 3',
                            icon: Icon(Icons.person),
                          ),
                        ],
                      ),
                    ),
                    body: const TabBarView(
                      children: [
                        Center(
                            child:
                                Text('Page 1', style: TextStyle(fontSize: 24))),
                        Center(
                            child:
                                Text('Page 2', style: TextStyle(fontSize: 24))),
                        Center(
                            child:
                                Text('Page 3', style: TextStyle(fontSize: 24))),
                      ],
                    ),
                  ),
                )),
      );

  Center getText(String title) => Center(
          child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ));
}
