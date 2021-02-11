import 'package:flutter/material.dart';

import './ProductContainer.dart';
import './Pet.dart';

class MyPetShop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Expanded(
              child: Stack(
                children: <Widget>[
                  // Our background
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      color: Color(0x000000FF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: Pets.length,
                    itemBuilder: (context, index) => ProductContainer(
                      itemIndex: index,
                      pet: Pets[index],
                      press: () => showPetPicture(context, Pets[index]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }

  showPetPicture(BuildContext context, Pet pet) {

    Widget backButton = TextButton(
      child: Text("Back"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(pet.title),
      content: Image.asset(pet.image, fit: BoxFit.fitWidth,),
      scrollable: true,
      actions: [
        backButton,
      ],
    );
  }

}
