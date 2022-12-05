import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  int _uno = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            myDrawer,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: 
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
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

            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                        height: 400,
                        decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage('images/pic5.jpg'),fit: BoxFit.fill),

                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                          ),
                          child: Center(
                            child: Text(
                              '50% de Descuento en zapatos',
                              style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 20,
                                fontFamily: 'Times New Roman',

                              ),

                            ),
                          ),


                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Center(
                                child:Text(
                                  'Contactenos: ',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 30,
                                    fontFamily: 'RaleWay',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                verticalDirection: VerticalDirection.down,

                                children: [
                                  FloatingActionButton(onPressed: () { },
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.whatsapp,
                                      color: Colors.white,
                                    ),

                                  ),
                                  FloatingActionButton(onPressed: () { },
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.facebook,
                                      color: Colors.white,
                                    ),

                                  ),
                                ],
                              ),
                              const Text(
                                'En caso de que necesites contactarnos, acude a nuestras redes sociales',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.center,
                              )


                            ],
                          ),
                        )

                      ),
                    ),

                  )
                ],
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
