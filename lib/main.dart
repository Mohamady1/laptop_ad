import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Laptop",
      home: Ad(),
    );
  }
}

class Ad extends StatelessWidget {
  const Ad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 72, 72),
        title: const Text("Laptops Section"),
        actions: const [
          Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.shopping_cart,
                size: 25,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Laptop For The Future",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                  "The new 14 inch Pixels display offering a\n 4k display with touch screen."),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: 400,
              height: 240,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          "https://images.pexels.com/photos/303383/pexels-photo-303383.jpeg?auto=compress&cs=tinysrgb&w=400"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            "https://images.pexels.com/photos/986772/pexels-photo-986772.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          "https://images.pexels.com/photos/331684/pexels-photo-331684.jpeg?auto=compress&cs=tinysrgb&w=400"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 135,
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Color.fromARGB(255, 212, 72, 72)),
                        borderRadius: BorderRadius.circular(5)),
                    child: const TextButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent),
                      ),
                      child: Text(
                        "14 Inch",
                        style:
                            TextStyle(color: Color.fromARGB(255, 212, 72, 72)),
                      ),
                    ),
                  ),
                  Container(
                    width: 135,
                    height: 55,
                    child: const TextButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 212, 72, 72)),
                      ),
                      child: Text(
                        "add to cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
