import 'package:flutter/material.dart';

class UpperSection extends StatefulWidget {
  const UpperSection({super.key});

  @override
  State<UpperSection> createState() => _UpperSectionState();
}

class _UpperSectionState extends State<UpperSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Added some padding around the entire column
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('lib/assets/profile.jpg'),
                radius: 30, // Set a larger radius for an appropriate profile picture size
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hello, Louis",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Good Morning 👋",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none, size: 30), // Increased icon size
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 11,
                    top: 11,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.favorite_outline_rounded, size: 30), // Increased icon size
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20), // Added space between the row and the search bar
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200, // Light grey background color for search bar
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: const Icon(Icons.filter_list, color: Colors.white, size: 30), // Increased icon size and set color to white
                  onPressed: () {
                    // Add filter functionality
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
