import 'package:flutter/material.dart';
import 'package:resturant_system/categorie_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List cate = [
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.red],
    ["drinks", Icons.local_drink, Colors.blueAccent],
    ["drinks", Icons.local_drink, Colors.red],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 7,
          child: ListView.builder(
            itemCount: cate.length,
            itemBuilder: (context, index) {
              return Cards(
                ctName: cate[index][0],
                ctIcon: cate[index][1],
                color: cate[index][2],
                height: 100,
                width: 100,
              );
            },
          ),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 0),
              itemCount: cate.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 10,
                        color: cate[index][2],
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          cate[index][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '75000',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.green,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "table rs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Expanded(child: Text("")),
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.dining_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.menu)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 2,
                child: DropdownButton(
                    borderRadius: BorderRadius.circular(15),
                    value: 1,
                    onChanged: (val) {},
                    items: [DropdownMenuItem(value: 1, child: Text("suit 2"))]),
              ),
              Expanded(child: Column()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.cancel),
                  Icon(Icons.airplane_ticket),
                  Icon(Icons.credit_card_outlined),
                  Icon(Icons.money),
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 4,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.transparent)),
                          onPressed: () {},
                          child: Text('Ok',
                              style: TextStyle(color: Colors.blue)))),
                  Container(
                      height: 80,
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 4,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                          onPressed: () {},
                          child: Text('payer')))
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
