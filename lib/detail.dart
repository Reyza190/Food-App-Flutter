import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';

class DetailScreen extends StatelessWidget {
  final Food food;
  const DetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(48),
              child: Image.network(
                food.image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      food.type,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      food.rating.toString(),
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            Text(
              food.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Bundle',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: food.bundleImage.map((url) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                          width: 80, // Specify the width for the images
                          child: Image.network(
                            url,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ));
                }).toList(),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          height: 90,
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp.${food.price}',
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
                const OrderButton(),
              ],
            ),
          )),
    );
  }
}

class OrderButton extends StatefulWidget {
  const OrderButton({super.key});

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  bool isOrder = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 15),
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48))),
        onPressed: () {
          setState(() {
            isOrder = !isOrder;
          });
        },
        child: Text(
          isOrder ? 'Order Successful' : 'Order Now',
          style: TextStyle(color: Colors.white),
        ));
  }
}
