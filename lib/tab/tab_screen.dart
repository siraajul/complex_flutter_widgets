import 'package:complex_flutter_widget/listtile/list_tile_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('TabBar'),
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.cloud_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.beach_access_sharp),
                      ),
                      Tab(
                        icon: Icon(Icons.brightness_5_sharp),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 36),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Sirajul ',
                                    style: TextStyle(color: Colors.blue)),
                                TextSpan(text: 'Islam '),
                                TextSpan(
                                    text: 'Parvez',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline))
                              ],
                            ),
                            textScaler: const TextScaler.linear(1.0),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("It's rainy here"),
                          SwitchExample(),
                        ],
                      ),
                    ),
                    ListTileScreen()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Switch(
              value: isChecked,
              onChanged: (bool value) {
                print(value);
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ],
        ),
        if (isChecked)
          const Text('This is normal text')
        else
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
        // if(isChecked)
        //   Text('This is normal text)
        //  else
        //       Container()
      ],
    );
  }
}
