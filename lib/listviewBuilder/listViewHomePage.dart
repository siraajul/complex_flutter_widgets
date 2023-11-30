import 'package:complex_flutter_widget/listviewBuilder/listbox.dart';
import 'package:flutter/material.dart';

import '../listtile/list_tile_screen.dart';

class listviewHomePage extends StatelessWidget {
   listviewHomePage({super.key});

  final List posts =[
    'ABC',
    'DEF',
    'GHI',
    'JKL',
    'MNO',
    'PQR',
    'STU',
    'VWX',
    'YZ0'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Example'),),
      body: ListView.builder(itemCount: posts.length,
        itemBuilder: (context, index)
        {
        return InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListTileScreen()),
            );
          },
            child: ListBox(child: posts[index]));
      },
      )
    );
  }
}
