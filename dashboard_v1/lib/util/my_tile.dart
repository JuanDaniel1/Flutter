import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key, required this.cont}) : super(key: key);
  final int cont;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 78,
          decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('images/img${cont + 1}.jpg')),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    if (cont == 0)...[
                      const Text('Zapatos para bebe',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                    ]
                    else if(cont == 1)...[
                      const Text('Tenis vans para mujer',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                    ]
                    else if(cont == 2)...[
                        const Text('Tacones blancos',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                      ]
                      else if(cont == 3)...[
                          const Text('Tenis rojos Reebok',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                        ]
                        else if(cont == 4)...[
                            const Text('Tacones negros',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                          ]
                          else if(cont == 5)...[
                              const Text('Zapatillas Asics naranjas',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                            ]
                            else if(cont == 6)...[
                                const Text('Zapatillas blancas',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                              ]
                              else if(cont == 7)...[
                                  const Text('Botas amarillas de cuero',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                                ]
                                else if(cont == 8)...[
                                    const Text('Botas cafes abrigadas',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                                  ]
                                  else if(cont == 9)...[
                                      const Text('Botas cafes para invierno',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),)
                                    ]
                  ],
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  alignment: Alignment.bottomRight,
                ),
                onPressed: () {},
                child: const Text('Mas informacion'),
              ),
            ],
          ),
        ));
  }
}
