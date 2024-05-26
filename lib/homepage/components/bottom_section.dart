import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  String selectedCategory = "All";

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterButton(
                  label: "All",
                  isSelected: selectedCategory == "All",
                  onTap: () => selectCategory("All"),
                ),
                FilterButton(
                  label: "Handbags",
                  isSelected: selectedCategory == "Cloths",
                  onTap: () => selectCategory("Cloths"),
                ),
                FilterButton(
                  label: "Dresses",
                  isSelected: selectedCategory == "Shoes",
                  onTap: () => selectCategory("Shoes"),
                ),
                FilterButton(
                  label: "Jewellery",
                  isSelected: selectedCategory == "Bag",
                  onTap: () => selectCategory("Bag"),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ProductCart(),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            backgroundColor: isSelected ? Colors.black : Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          child: Text(
            label,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> products = [
      ["Striped Shirt", "120", "lib/assets/shirt.jpg"],
      ["Nike Shoes", "52", "lib/assets/shoes.jpg"],
      ["Pink T-shirt", "80", "lib/assets/tshirt.jpg"],
      ["Graphic T-Shirt", "150", "lib/assets/tshirt2.jpg"],
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3, // Adjusted to maintain a portrait aspect ratio
      ),
      itemBuilder: (context, index) {
        return ProductItemTile(
          itemName: products[index][0],
          itemPrice: products[index][1],
          imagePath: products[index][2],
        );
      },
    );
  }
}

class ProductItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  const ProductItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // item name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                itemName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // item price
            Text(
              '\$' + itemPrice,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
