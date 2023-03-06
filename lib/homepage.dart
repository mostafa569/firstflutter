import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> laptops = [    'Laptop 1',    'Laptop 2',    'Laptop 3',    'Laptop 4',    'Laptop 5',    'Laptop 6',    'Laptop 7',    'Laptop 8',    'Laptop 9',    'Laptop 10',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Now '),
      ),
      body: GridView.builder(
        itemCount: laptops.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Go to laptop details page
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/images/lap1.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      laptops[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '\$150.0',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },),);
  }}
