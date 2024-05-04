import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String color = 'Black';
  String size = 'XXL';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Back to Shopping',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: DropdownButton(
                                  underline:
                                      Container(height: 1, color: Colors.grey),
                                  value: color,
                                  isExpanded: true,
                                  items: <String>[
                                    'Black',
                                    'White',
                                    'Red',
                                    'Blue'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {}),
                            ),
                            Expanded(
                              child: DropdownButton(
                                  underline:
                                      Container(height: 1, color: Colors.grey),
                                  value: size,
                                  isExpanded: true,
                                  items: <String>['XXL', 'XL', 'L', 'M']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {}),
                            )
                          ],
                        )),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Kapka Valour',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text('5.0 stars',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                              Text('\$5500',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Description',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Text(
                              'In Flutter, UI design involves creating visual and interactive elements for your app using widgets. Widgets are pre-built components that can be arranged in a hierarchy to create complex layouts.',
                              style:
                                  TextStyle(color: Colors.grey, height: 1.5)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Row(
            children: [
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Buy button clicked');
                        }
                      },
                      color: Colors.orange,
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: const Text(
                        'Buy',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ))),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Buy button clicked');
                  }
                },
                color: Colors.grey,
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text('Add a bag',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ))
            ],
          ),
        ));
  }
}
