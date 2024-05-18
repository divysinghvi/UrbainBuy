import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:urbanbuy/griedview.dart';

class Sliderx extends StatelessWidget {
  const Sliderx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagePathList = [
      // Local asset // Network imag
      "https://static.vecteezy.com/system/resources/previews/006/560/561/original/4-april-sale-poster-or-banner-with-4-over-on-product-podium-scene-april-4-sales-banner-template-design-for-social-media-and-website-special-offer-sale-50-off-campaign-or-promotion-free-vector.jpg", // Network image
      "https://img.freepik.com/free-photo/sale-products-with-discount_23-2150296283.jpg?size=338&ext=jpg&ga=GA1.1.87170709.1707609600&semt=ais"
    ];
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Special offers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Text(
              "See All",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 120,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: imagePathList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              String imagePath = imagePathList[itemIndex];
              if (imagePath.startsWith('http')) {
                // Network image
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              } else {
                // Local asset
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: const Gri(),
        ),
      ],
    );
  }
}
