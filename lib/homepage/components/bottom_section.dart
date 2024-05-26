
//         "Striped Shirt",
//         "120",
//         "lib/assets/shirt.jpg",
//         "This stylish and comfortable striped shirt is perfect for any casual occasion. Made from high-quality cotton fabric, it features a classic black and white stripe pattern that adds a touch of sophistication to your look. Whether you're heading to work or hanging out with friends, this shirt is sure to keep you looking sharp and feeling great all day long."
//       ],
//       [
//         "Nike Shoes",
//         "52",
//         "lib/assets/shoes.jpg",
//         "Step up your sneaker game with these trendy Nike shoes. Designed for both style and performance, these shoes feature a sleek and modern design with a breathable mesh upper and cushioned midsole for maximum comfort. Whether you're hitting the gym or running errands, these shoes will keep you looking and feeling your best."
//       ],
//       [
//         "Pink T-shirt",
//         "80",
//         "lib/assets/tshirt.jpg",
//         "Add a pop of color to your wardrobe with this vibrant pink t-shirt. Made from soft and stretchy cotton fabric, it offers a comfortable fit that's perfect for everyday wear. Pair it with your favorite jeans or shorts for a casual yet stylish look that's perfect for any occasion. Whether you're lounging at home or out and about, this t-shirt is sure to become a wardrobe staple."
//       ],
//       [
//         "Graphic T-Shirt",
//         "150",
//         "lib/assets/tshirt2.jpg",
//         "Make a statement with this eye-catching graphic t-shirt. Featuring a bold and colorful design, it adds a fun and playful touch to any outfit. Made from premium cotton fabric, it offers a soft and comfortable feel that's perfect for all-day wear. Whether you're hitting the streets or hanging out with friends, this t-shirt is sure to turn heads wherever you go."
//       ],
//       [
//         "Crocodile T-Shirt",
//         "100",
//         "lib/assets/crocodiletshirt.jpg",
//         "Embrace a wild side with this crocodile-themed t-shirt. Crafted from high-quality cotton, this shirt features a unique crocodile graphic that's sure to catch attention. With its comfortable fit and stylish design, it's the perfect choice for adding a touch of personality to your casual wardrobe."
//       ],
//       [
//         "Graphic T-Shirt",
//         "100",
//         "lib/assets/graphictshirt.jpg",
//         "Express yourself with this versatile graphic t-shirt. Featuring a cool and edgy design, it's perfect for adding a pop of style to any casual outfit. Made from soft cotton fabric, it offers a comfortable fit that's ideal for everyday wear. Whether you're hanging out with friends or running errands, this t-shirt is sure to become a favorite in your collection."
//       ],
//       [
//         "Oversized T-Shirt",
//         "100",
//         "lib/assets/oversizedtshirt.jpg",
//         "Get cozy and stylish with this oversized t-shirt. Made from soft and breathable cotton fabric, it offers a relaxed fit that's perfect for lounging or casual outings. Pair it with leggings or jeans for a laid-back yet trendy look. Whether you're relaxing at home or out running errands, this t-shirt is a must-have for your wardrobe."
//       ],
//       [
//         "Nike Jordan",
//         "250",
//         "lib/assets/shoecat.jpg",
//         "Elevate your sneaker game with these iconic Nike Jordans. Featuring a classic design and premium materials, these shoes offer both style and performance. Whether you're hitting the court or the streets, they provide the comfort and support you need to stay on top of your game. With their timeless appeal, Nike Jordans are a must-have addition to any sneaker collection."
//       ],
//       [
//         "Vans-otw",
//         "125",
//         "lib/assets/vansshoes.jpg",
//         "Step out in style with these classic Vans OTW sneakers. Combining comfort and versatility, these shoes are perfect for everyday wear. Whether you're skating at the park or hanging out with friends, they offer the perfect blend of style and functionality. With their iconic design and durable construction, Vans OTW sneakers are a wardrobe essential for any sneakerhead."
//       ],
//       [
//         "Citizen Watch",
//         "300",
//         "lib/assets/watchcat.jpg",
//         "Accessorize in style with this sleek Citizen watch. Featuring a classic design and precision Japanese quartz movement, this watch is both stylish and reliable. Whether you're dressing up for a special occasion or keeping it casual, it adds a touch of sophistication to any outfit. With its timeless appeal and superior craftsmanship, this Citizen watch is a must-have accessory for any modern man or woman."
//       ],
//
//     ];
import 'package:flutter/material.dart';
import 'package:urbanbuy/homepage/components/Item_tile.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({Key? key});

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
                  label: "Men",
                  isSelected: selectedCategory == "Men",
                  onTap: () => selectCategory("Men"),
                ),
                FilterButton(
                  label: "Women",
                  isSelected: selectedCategory == "Women",
                  onTap: () => selectCategory("Women"),
                ),
                FilterButton(
                  label: "Kids",
                  isSelected: selectedCategory == "Kids",
                  onTap: () => selectCategory("Kids"),
                ),
                FilterButton(
                  label: "Unisex",
                  isSelected: selectedCategory == "Unisex",
                  onTap: () => selectCategory("Unisex"),
                ),
                FilterButton(
                  label: "Home",
                  isSelected: selectedCategory == "Home",
                  onTap: () => selectCategory("Home"),
                ),
                FilterButton(
                  label: "Decor",
                  isSelected: selectedCategory == "Decor",
                  onTap: () => selectCategory("Decor"),
                ),
                FilterButton(
                  label: "Luggage",
                  isSelected: selectedCategory == "Luggage",
                  onTap: () => selectCategory("Luggage"),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ProductCart(selectedCategory: selectedCategory),
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
  final String selectedCategory;

  const ProductCart({Key? key, required this.selectedCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {
        "name": "Striped Shirt",
        "price": "120",
        "imagePath": "lib/assets/shirt.jpg",
        "description": "This stylish and comfortable striped shirt is perfect for any casual occasion. Made from high-quality cotton fabric, it features a classic black and white stripe pattern that adds a touch of sophistication to your look. Whether you're heading to work or hanging out with friends, this shirt is sure to keep you looking sharp and feeling great all day long.",
        "tag": "Men"
      },
      {
        "name": "Nike Shoes",
        "price": "52",
        "imagePath": "lib/assets/shoes.jpg",
        "description": "Step up your sneaker game with these trendy Nike shoes. Designed for both style and performance, these shoes feature a sleek and modern design with a breathable mesh upper and cushioned midsole for maximum comfort. Whether you're hitting the gym or running errands, these shoes will keep you looking and feeling your best.",
        "tag": "Kids"
      },
      {
        "name": "Pink T-shirt",
        "price": "80",
        "imagePath": "lib/assets/tshirt.jpg",
        "description": "Add a pop of color to your wardrobe with this vibrant pink t-shirt. Made from soft and stretchy cotton fabric, it offers a comfortable fit that's perfect for everyday wear. Pair it with your favorite jeans or shorts for a casual yet stylish look that's perfect for any occasion. Whether you're lounging at home or out and about, this t-shirt is sure to become a wardrobe staple.",
        "tag": "Men"
      },
      {
        "name": "GAP T-Shirt",
        "price": "150",
        "imagePath": "lib/assets/tshirt2.jpg",
        "description": "Make a statement with this eye-catching graphic t-shirt. Featuring a bold and colorful design, it adds a fun and playful touch to any outfit. Made from premium cotton fabric, it offers a soft and comfortable feel that's perfect for all-day wear. Whether you're hitting the streets or hanging out with friends, this t-shirt is sure to turn heads wherever you go.",
        "tag": "Women"
      },
      {
        "name": "Crocodile T-Shirt",
        "price": "100",
        "imagePath": "lib/assets/crocodiletshirt.jpg",
        "description": "Embrace a wild side with this crocodile-themed t-shirt. Crafted from high-quality cotton, this shirt features a unique crocodile graphic that's sure to catch attention. With its comfortable fit and stylish design, it's the perfect choice for adding a touch of personality to your casual wardrobe.",
        "tag": "Men"
      },
      {
        "name": "Graphic T-Shirt",
        "price": "100",
        "imagePath": "lib/assets/graphictshirt.jpg",
        "description": "Express yourself with this versatile graphic t-shirt. Featuring a cool and edgy design, it's perfect for adding a pop of style to any casual outfit. Made from soft cotton fabric, it offers a comfortable fit that's ideal for everyday wear. Whether you're hanging out with friends or running errands, this t-shirt is sure to become a favorite in your collection.",
        "tag": "Women"
      },
      {
        "name": "Oversized T-Shirt",
        "price": "100",
        "imagePath": "lib/assets/oversizedtshirt.jpg",
        "description": "Get cozy and stylish with this oversized t-shirt. Made from soft and breathable cotton fabric, it offers a relaxed fit that's perfect for lounging or casual outings. Pair it with leggings or jeans for a laid-back yet trendy look. Whether you're relaxing at home or out running errands, this t-shirt is a must-have for your wardrobe.",
        "tag": "Men"
      },
      {
        "name": "Nike Jordan",
        "price": "250",
        "imagePath": "lib/assets/shoecat.jpg",
        "description": "Elevate your sneaker game with these iconic Nike Jordans. Featuring a classic design and premium materials, these shoes offer both style and performance. Whether you're hitting the court or the streets, they provide the comfort and support you need to stay on top of your game. With their timeless appeal, Nike Jordans are a must-have addition to any sneaker collection.",
        "tag": "Unisex"
      },
      {
        "name": "Vans-otw",
        "price": "125",
        "imagePath": "lib/assets/vansshoes.jpg",
        "description": "Step out in style with these classic Vans OTW sneakers. Combining comfort and versatility, these shoes are perfect for everyday wear. Whether you're skating at the park or hanging out with friends, they offer the perfect blend of style and functionality. With their iconic design and durable construction, Vans OTW sneakers are a wardrobe essential for any sneakerhead.",
        "tag": "Men"
      },
      {
        "name": "Citizen Watch",
        "price": "300",
        "imagePath": "lib/assets/watchcat.jpg",
        "description": "Accessorize in style with this sleek Citizen watch. Featuring a classic design and precision Japanese quartz movement, this watch is both stylish and reliable. Whether you're dressing up for a special occasion or keeping it casual, it adds a touch of sophistication to any outfit. With its timeless appeal and superior craftsmanship, this Citizen watch is a must-have accessory for any modern man or woman.",
        "tag": "Men"
      }
    ]
    ;

    // Filter products based on the selected category and tag
    List<Map<String, dynamic>> filteredProducts = products.where((product) {
      // Assuming the category is stored in the 'tag' field of each product
      return (product['tag'] == selectedCategory || selectedCategory == "All");
    }).toList();

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: filteredProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        return ProductItemTile(
          itemName: filteredProducts[index]["name"],
          itemPrice: filteredProducts[index]["price"],
          imagePath: filteredProducts[index]["imagePath"],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemTile(
                  itemName: filteredProducts[index]["name"],
                  itemPrice: filteredProducts[index]["price"],
                  imagePath: filteredProducts[index]["imagePath"],
                  proDescription: filteredProducts[index]["description"],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ProductItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final VoidCallback onTap;

  const ProductItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
