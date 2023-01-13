import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String iconPath;
  final String dish;

  const IconWidget({super.key, required this.iconPath, required this.dish});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Tab(
      height: widthSize / 4,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Image.asset(
              iconPath,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 13),
          Text(
            dish,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
