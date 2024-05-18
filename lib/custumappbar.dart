import 'package:flutter/material.dart';

class UPPERSECTION extends StatefulWidget {
  const UPPERSECTION({super.key});

  @override
  State<UPPERSECTION> createState() => _UPPERSECTIONState();
}

class _UPPERSECTIONState extends State<UPPERSECTION> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://img.freepik.com/free-psd/expressive-woman-gesturing_23-2150198673.jpg?size=626&ext=jpg&ga=GA1.1.1369675164.1715558400&semt=ais_user"),
          radius: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          children: [
            Text("Good Morning 👋"),
            Text(
              "Maria Anderson",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        IconButton(
          icon: const Icon(Icons.notifications_active_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.favorite_outline_rounded),
          onPressed: () {
            // Add functionality for favorites
          },
        ),
      ],
    );
  }
}
