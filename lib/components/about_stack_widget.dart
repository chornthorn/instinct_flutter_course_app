import 'package:flutter/material.dart';

class AboutStackWidget extends StatelessWidget {
  const AboutStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        // physics: const ClampingScrollPhysics(),
        // physics: const AlwaysScrollableScrollPhysics(),
        // physics: const NeverScrollableScrollPhysics(),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Positioned(
                    child: Text('Positioned'),
                    right: 0,
                    bottom: 50,
                  ),
                ],
              ),
              SizedBox(height: 20),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     width: 180,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: Column(
                       children: [
                         Stack(
                           alignment: Alignment.center,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(12),
                                 topRight: Radius.circular(12),
                               ),
                               child: Image.network(
                                 'https://picsum.photos/200',
                                 fit: BoxFit.cover,
                               ),
                             ),
                             // favorite icon
                             Positioned(
                               top: 10,
                               right: 10,
                               child: Icon(
                                 Icons.favorite,
                                 color: Colors.red,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 16),
                         Padding(
                           padding:
                           const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 'Stack Widget',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(height: 10),
                               Text(
                                 'Stack is a widget that allows you to overlap widgets on top of each other.',
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                    SizedBox(width: 20),
                   Container(
                     width: 180,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: Column(
                       children: [
                         Stack(
                           alignment: Alignment.center,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(12),
                                 topRight: Radius.circular(12),
                               ),
                               child: Image.network(
                                 'https://picsum.photos/200',
                                 fit: BoxFit.cover,
                               ),
                             ),
                             // favorite icon
                             Positioned(
                               top: 10,
                               right: 10,
                               child: Icon(
                                 Icons.favorite,
                                 color: Colors.red,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 16),
                         Padding(
                           padding:
                           const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 'Stack Widget',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(height: 10),
                               Text(
                                 'Stack is a widget that allows you to overlap widgets on top of each other.',
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(width: 20),
                   Container(
                     width: 180,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: Column(
                       children: [
                         Stack(
                           alignment: Alignment.center,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(12),
                                 topRight: Radius.circular(12),
                               ),
                               child: Image.network(
                                 'https://picsum.photos/200',
                                 fit: BoxFit.cover,
                               ),
                             ),
                             // favorite icon
                             Positioned(
                               top: 10,
                               right: 10,
                               child: Icon(
                                 Icons.favorite,
                                 color: Colors.red,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 16),
                         Padding(
                           padding:
                           const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 'Stack Widget',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(height: 10),
                               Text(
                                 'Stack is a widget that allows you to overlap widgets on top of each other.',
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Stack Widget',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stack is a widget that allows you to overlap widgets on top of each other.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/200',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // favorite icon
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stack Widget',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Stack is a widget that allows you to overlap widgets on top of each other.',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/200',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // favorite icon
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stack Widget',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Stack is a widget that allows you to overlap widgets on top of each other.',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/200',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // favorite icon
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stack Widget',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Stack is a widget that allows you to overlap widgets on top of each other.',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text('List Item $index'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
