import 'package:appbar_widgets/src/util/az_material_colors.dart';
import 'package:flutter/material.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///
///  App with a navigation drawer, see [DrawerWidget]
class MyNavigationDrawer extends StatefulWidget {
  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation AppBar',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Navigation AppBar'),
            ),
            drawer: isPortraitMode(context) ? DrawerWidget() : null,
          ),
        );
      }),
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

  bool isPortraitMode(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
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

  Widget buildHeader(BuildContext context) => Material(
        color: Colors.blue.shade700,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                    'https://source.unsplash.com/random?sig=1',
                  ),
                ),
                Text(
                  'Aziz Kadhi',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                Text(
                  'ziz@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MyNavigationDrawer()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Favorites'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text('Workflow'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Updates'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Plugins'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notifications'),
              onTap: () {},
            ),
          ],
        ),
      );
}
