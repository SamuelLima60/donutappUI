import 'package:flutter/material.dart';

class DonutTabs extends StatelessWidget {
  const DonutTabs({super.key});

  @override
  Widget build(BuildContext context) {
    List donutData = [
      ["Ice Cream", "36.99", Colors.blue, "assets/img/icecream_donut.png"],
      ["Strawberry", "45.99", Colors.red, "assets/img/strawberry_donut.png"],
      ["Grape Ape", "84.99", Colors.purple, "assets/img/grape_donut.png"],
      ["Choco", "95.99", Colors.brown, "assets/img/chocolate_donut.png"],
    ];

    double widthSize = MediaQuery.of(context).size.width;

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: ((widthSize - 12) / 2) / 335,
        mainAxisSpacing: 20,
        crossAxisSpacing: 25,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: donutData[index][2][100],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Text('\$${donutData[index][1]}'),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      donutData[index][3],
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      donutData[index][0],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Dunkin\'s',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
