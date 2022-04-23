import 'package:appbar_widgets/src/util/az_material_colors.dart';
import 'package:flutter/material.dart';

///  https://www.youtube.com/watch?v=TlbbIQykHK0
///
/// To handle the back button press.
class MyWillPopScope extends StatefulWidget {
  @override
  State<MyWillPopScope> createState() => _MyWillPopScopeState();
}

class _MyWillPopScopeState extends State<MyWillPopScope> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page 1',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return SafeArea(
          child: WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Page 1'),
              ),
              // drawer: DrawerWidget(),
              body: Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: blueMaterialColor,
                  ),
                  child: getText('To Page 2'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getText(String title) => Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      );
}

//////////////////////////////////////////////////

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          final shouldPop = await showMyDialog();
          return shouldPop ?? false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Page 2'),
          ),
          // drawer: DrawerWidget(),
          body: getText('Page 2'),
        ),
      );

  Center getText(String title) => Center(
          child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 50,
        ),
      ));

  Future<bool?> showMyDialog() => showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: const Text('Do you want to go back'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes'),
              ),
            ],
          ));
}
