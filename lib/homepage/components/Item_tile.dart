import 'package:flutter/material.dart';
import 'package:urbanbuy/homepage/components/bottom_section.dart';

class ItemTile extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final String proDescription;

  const ItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.proDescription,
  }) : super(key: key);

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> with TickerProviderStateMixin {
  bool isLiked = true;
  late AnimationController _controller;
  late Animation<double> _animation;
  String selectedSize = "M"; // Default size is "M"

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _appBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
            size: 20,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          _icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
            size: 20,
            padding: 12,
            isOutLine: false,
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _icon(
      IconData icon, {
        Color color = Colors.grey,
        double size = 20,
        double padding = 10,
        bool isOutLine = false,
        required Function() onPressed,
      }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: isOutLine ? Colors.transparent : Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color(0xfff8f8f8),
              blurRadius: 5,
              spreadRadius: 10,
              offset: Offset(5, 5)),
        ],
      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(onPressed, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _productImage() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _animation.value,
          child: child,
        );
      },
      child: Center(
        child: Image.asset(widget.imagePath, height: 300),
      ),
    );
  }

  Widget _productDetails() {
    return DraggableScrollableSheet(
      maxChildSize: 0.8,
      initialChildSize: 0.5,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget.itemName,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("\$",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.red)),
                            Text(widget.itemPrice,
                                style: TextStyle(fontSize: 24)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star_border,
                                color: Colors.yellow, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _availableSize(),
                const SizedBox(height: 20),
                _availableColor(),
                const SizedBox(height: 20),
                _description(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _availableSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Available Size", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _sizeWidget("S"),
            _sizeWidget("M"),
            _sizeWidget("L"),
            _sizeWidget("XL"),
          ],
        ),
      ],
    );
  }

  Widget _sizeWidget(String text, {bool isSelected = false}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedSize = text;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey,
              style: selectedSize == text
                  ? BorderStyle.none
                  : BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          color: selectedSize == text ? Colors.black : Colors.white,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: selectedSize == text ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _availableColor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Available Colors", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _colorWidget(Colors.yellow),
            const SizedBox(width: 20),
            _colorWidget(Colors.blue),
            const SizedBox(width: 20),
            _colorWidget(Colors.black),
            const SizedBox(width: 20),
            _colorWidget(Colors.red),
            const SizedBox(width: 20),
            _colorWidget(Colors.green),
          ],
        ),
      ],
    );
  }

  Widget _colorWidget(Color color) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withOpacity(0.5),
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Description", style: TextStyle(fontSize: 20)), // Increased font size
        const SizedBox(height: 10),
        Text(
          widget.proDescription,
          style: TextStyle(fontSize: 16), // Increased font size
        ),
      ],
    );
  }

  FloatingActionButton _floatingButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.black,
      child: Icon(Icons.shopping_cart, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatingButton(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color(0xfff7f7f7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _appBar(),
                  _productImage(),
                ],
              ),
              _productDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

extension RippleExtension on Widget {
  Widget ripple(Function onPressed, {BorderRadius? borderRadius}) {
    return InkWell(
      onTap: () => onPressed(),
      borderRadius: borderRadius,
      child: this,
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: BottomSection(),
  ));
}
