import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "QuickNote",
            style: TextStyle(fontSize: 22, fontFamily: "Poppins"),
          ),
          CustomSearchIcon()
        ],
      ),
    );
  }
}