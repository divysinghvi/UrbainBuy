import 'package:flutter/material.dart';

class Gri extends StatelessWidget {
  const Gri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        children: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/021/855/891/small/t-shirt-icon-isolated-on-white-background-vector.jpg"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Cloths',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/192/799/png-transparent-sneakers-shoe-computer-icons-buckle-fashion-accessories-court-shoe-thumbnail.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Shoes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.vectorstock.com/i/500p/57/22/two-shopping-bags-icon-vector-36265722.jpg"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Bags',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/357/510/original/watch-vector-icon.jpg"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Watch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/348/689/png-transparent-kitchen-utensil-chef-cooking-computer-icons-culinary-arts-cooking-kitchen-logo-vector-icons.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Kitchen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.shutterstock.com/image-vector/jewelry-necklace-icon-260nw-1059497141.jpg"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Jewellery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQflb6DyTJPuKKvp2OXWSdoyN478aDRNe2WHw&usqp=CAU"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Toy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/1165/1165218.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Sports',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/545/545099.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Innerwears',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/529/529674.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'Glasses',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/4742/4742466.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  'guns',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/192/192112.png"),
                  radius: 35,
                ),
                SizedBox(height: 8), // Add space between image and text
                Text(
                  ' Choclate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
