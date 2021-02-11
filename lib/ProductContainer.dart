import 'package:flutter/material.dart';

import './Pet.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    Key key,
    this.itemIndex,
    this.pet,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Pet pet;
  final Function press;

  static const defaultShadow = BoxShadow(
    offset: Offset(0, 15),
    blurRadius: 27,
    color: Colors.black12, // Black color with 12% opacity
  );


  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10, // 20 / 2
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? Color(0xFFF5CEC7) : Color(0x8F000000),
                boxShadow: [defaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${pet.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    pet.image,
                    fit: BoxFit.fitWidth,

                  ),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20),
                      child: Text(
                        pet.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    // it use the available space
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30, // 20 * 1.5
                        vertical: 5, // 20 / 4
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5CEC7),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "฿${pet.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
