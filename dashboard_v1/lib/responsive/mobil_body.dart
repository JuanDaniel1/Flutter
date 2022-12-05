import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class  MobileScaffold extends StatefulWidget  {
  const MobileScaffold({Key? key}) : super(key: key);


  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  int _uno = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return MyBox(cont: index,);
                  },
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MyTile(cont: index,);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _uno = index;
          });
        },
        currentIndex: _uno,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.red,),label: 'inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded, color: Colors.red,),label: 'buscar')
        ],
      ),
    );
  }
}