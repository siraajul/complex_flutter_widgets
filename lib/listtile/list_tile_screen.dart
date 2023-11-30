import 'package:flutter/material.dart';

import '../listviewBuilder/listbox.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List posts = [
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

    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile example'),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add_box_outlined),
        color: Colors.redAccent,
        onPressed: () {},
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      )),
      body: Column(
        children: [
          // ListTile(
          //   leading: Icon(Icons.ac_unit_sharp),
          //   title: Text('this is heading title'),
          //   subtitle: Text('this is a long text containing detail info'),
          //   trailing: Icon(Icons.navigate_next_outlined),
          //     tileColor: Colors.greenAccent
          //
          // ) , ListTile(
          //   leading: Icon(Icons.ac_unit_sharp),
          //   title: Text('this is heading title'),
          //   subtitle: Text('this is a long text containing detail info'),
          //   trailing: Icon(Icons.navigate_next_outlined),
          //     tileColor: Colors.redAccent
          //
          // )
//Grid View Builder
          // GridView.builder(
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 5.0,
          //     mainAxisSpacing: 5.0,
          //   ),
          //   itemCount: posts.length,
          //   itemBuilder: (context, index) {
          //     return InkWell(
          //         onTap: (){
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => const ListTileScreen()),
          //           );
          //         },
          //         child: ListBox(child: posts[index]));
          //   },
          // )
          Container(
            height: 150,
            width: 150,
            color: Colors.green,
            // decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.greenAccent),

            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(75.0),
                  child: Image(
                    image: NetworkImage('https://picsum.photos/250?image=9'),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Icon(
                    Icons.two_wheeler,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 50,
                  child: Icon(
                    Icons.two_wheeler,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
