import 'package:appbar_widgets/src/util/az_material_colors.dart';
import 'package:flutter/material.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///
/// PopupMenuButton with 4 menu items.
class MyPopupMenuButton extends StatefulWidget {
  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Popup Menu',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: orangeMaterialColor,
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Popup Menu'),
              actions: [
                PopupMenuButton(
                  onSelected: (value) {
                    switch (value) {
                      case MenuItem.item1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemPage(),
                          ),
                        );
                        break;
                      case MenuItem.item2:
                        break;
                      case MenuItem.item3:
                        break;
                      case MenuItem.item4:
                        break;

                      default:
                    }
                  },
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      child: Text('Item 1'),
                      value: MenuItem.item1,
                    ),
                    PopupMenuItem(
                      child: Text('Item 2'),
                      value: MenuItem.item2,
                    ),
                    PopupMenuItem(
                      child: Text('Item 3'),
                      value: MenuItem.item3,
                    ),
                    PopupMenuItem(
                      child: Text('Item 4'),
                      value: MenuItem.item4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

enum MenuItem {
  item1,
  item2,
  item3,
  item4,
}

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Probably need SafeArea()
        Scaffold(
      appBar: AppBar(
        title: const Text(
          'Item 1',
          // backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
