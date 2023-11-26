import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(14)
      ),
      child: IconButton(onPressed: (){}, icon: const Icon(Icons.search, size: 28,)),
    );
  }
}
