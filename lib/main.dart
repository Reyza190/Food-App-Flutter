import 'package:flutter/material.dart';
import 'package:food_app/detail.dart';
import 'package:food_app/model/food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(30), // Image radius
                  child: Image.network(
                    'https://www.newvisiontheatres.com/wp-content/uploads/2023/06/Dwayne-Johnson.jpg',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Hello',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rheza',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ]),
            const SizedBox(height: 24),
            const Text(
              'What do you want \n for lunch?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Most Ordered',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: foodList.length,
                    itemBuilder: (context, index) {
                      final Food food = foodList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(food: food);
                          }));
                        },
                        child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Container(margin: const EdgeInsets.only(bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        child: Image.network(
                                          food.image,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Text(
                                          food.name,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          food.type,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                child: Row(
                                  children: [
                                    Text(
                                      food.rating.toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
