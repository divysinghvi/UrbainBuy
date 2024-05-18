import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              "Most Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Text(
              "See All",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ProductsHover(),
        SizedBox(
          height: 10,
        ),
        Productcart()
      ],
    );
  }
}

class ProductsHover extends StatefulWidget {
  const ProductsHover({Key? key}) : super(key: key);

  @override
  _ProductsHoverState createState() => _ProductsHoverState();
}

class _ProductsHoverState extends State<ProductsHover> {
  late bool isHovered;

  @override
  void initState() {
    super.initState();
    isHovered = true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Shoes",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Shoes",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Bag",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Electronics",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Mobiles",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Sports",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Innerwears",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Jewellery",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Toys",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Mini gadets",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Kitchen",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Girls rent",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the radius as needed
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: const BorderSide(
                      width: 1,
                      color: Colors.black), // Adjust thickness and color
                ),
                child: const Text(
                  "Choclates",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Productcart extends StatelessWidget {
  const Productcart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GridView.count(shrinkWrap: true, crossAxisCount: 3, children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://image.similarpng.com/very-thumbnail/2020/04/cosmetic-products-ad-3d-skin-care-brand-cream-lotion-png.png"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://e7.pngegg.com/pngimages/608/13/png-clipart-oriflame-cosmetics-sweden-oriflame-cosmetics-sweden-skin-care-beauty-oriflame-products-purple-cream.png"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7AMwvWRSTE5EVbsRkSuZSVy47nNNBP-an2g&usqp=CAU"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://e7.pngegg.com/pngimages/204/549/png-clipart-apple-watch-smartwatch-wearable-technology-apple-products-electronics-gadget-thumbnail.png"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/017/054/078/non_2x/headphones-design-3d-rendering-for-product-mockup-free-png.png"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGZrGzvCZitM0SxJR4SVoC-o9rmRZmZ_3S7Q&usqp=CAU"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://www.lashika.in/cdn/shop/files/105.png?v=1712906051"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwvUxArWhaN3t-TENP7s4iMYvBsVJN3f1DXQ&usqp=CAU"),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://admin.pngadgil1832.com/UploadedFiles/ProductImages/ER14994708PNG_01.png"),
              )
            ],
          ),
        ),
      ])
    ]);
  }
}
