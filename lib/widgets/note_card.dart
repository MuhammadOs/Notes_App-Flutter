import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: const Color(0xffffcc80),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  "Flutter tips",
                  style: TextStyle(
                        color: Colors.black, fontSize: 32, fontFamily: "Poppins"),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "It's Muhammad Osama, building my career",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: "Poppins"),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    )),
              ),
              const Text(
                "Nov 26,2023",
                style: TextStyle(
                    color: Colors.black54, fontSize: 16, fontFamily: "Poppins"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
