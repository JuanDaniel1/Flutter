import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');
  final int cont;

  final String product;
  final String details;

  const ItemDetailsScreen(
      {Key? key,
      required this.product,
      required this.cont,
      required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Center(
                child: Column(
                  children: [
                    if (cont == 0) ...[
                      Text(
                        'Mandarina',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 1) ...[
                      Text(
                        'Guanabana',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 2) ...[
                      Text(
                        'Uvas',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 3) ...[
                      Text(
                        'Manzana',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 4) ...[
                      Text(
                        'Naranja',
                        style: Theme.of(context).textTheme.headline2,
                      ),

                    ] else if (cont == 5) ...[
                      Text(
                        'Tomate',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 6) ...[
                      Text(
                        'Pimiento',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 7) ...[
                      Text(
                        'Sandia',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 8) ...[
                      Text(
                        'Aguacate',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ] else if (cont == 9) ...[
                      Text(
                        'Chile',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ]
                  ],
                )),
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pic${cont + 1}.jpg'),
                ),
              ),
            ),
            Column(
              children: [
                if (cont == 0) ...[
                  Column(
                    children: const [
                          Text(
                            'La mandarina es una fruta muy saludable, procede de las frutas citricas y contiene vitamina C',
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.italic
                            ),
                          )



                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 500',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),)
                    ],
                  )
                  
                ] else if (cont == 1) ...[
                  Column(
                    children: const [
                      Text(
                        'La Guanabana es una fruta de gran tamaño, por fuera color verde y por dentro blanco, ademas de ser muy jugoso, es originario de la America tropical',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 6000',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 2) ...[
                  Column(
                    children: const [
                      Text(
                        'Las uvas son de gran alimento, color morado o verde, es rico en antioxidantes y ayuda a cuidar la vista, ademas suele ser un ingrediente esencial para el vino',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 1000',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 3) ...[
                  Column(
                    children: const [
                      Text(
                        'La manzana es una fruta de color roho o verde por fuera y blanco por dentro, estos fueron cultivados durante varios años en Asia y ahora se han extendido por el mundo',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 400',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 4) ...[
                  Column(
                    children: const [
                      Text(
                        'La naranja, fruta mas representativa que contiene vitamina C, es naranja por fuera y dentro, hace parte de los citricos y existen muchas variedades de este fruto',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 800',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 5) ...[
                  Column(
                    children: const [
                      Text(
                        'El tomate es una verdura, rojo por fuera y dentro, el cual se ha utilizado bastante para hacer platos como ensaladas y muchos mas',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 600',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 6) ...[
                  Column(
                    children: const [
                      Text(
                        'El pimiento es una verdura con gran variedad de colores, procede de America del sur, posee alto contenido en agua y bajo en calorias y tambien aporta vitamina C ',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 750',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 7) ...[
                  Column(
                    children: const [
                      Text(
                        'La sandia es una fruta muy consumida durante el verano debido a su alto contenido de agua y es muy deliciosa esta fruta, contiene varios nutrientes, vitaminas, minerales y antioxidantes',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 7000',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 8) ...[
                  Column(
                    children: const [
                      Text(
                        'El aguacate, fruto del aguacatero, es muy saludable que es preferido por muchas personas, contiene grasa saludable, vitamina E, minerales y mas ',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 600',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ] else if (cont == 9) ...[
                  Column(
                    children: const [
                      Text(
                        'El chile es una fruta muy picante, es muy conocido en Mexico y es aplicado en varias recetas gastronomicas',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Precio: 300',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  )
                ]
              ],
            )
          ],
        ),
      )
    );
  }
}
