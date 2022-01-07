import 'package:flutter/material.dart';
import 'package:annurbusana_application_project/productdesign.dart';

class GridViewProduct extends StatelessWidget {
  final String image;
  final String pname;
  final String description;
  final String price;
  const GridViewProduct({
    Key key,
    this.image,
    this.description,
    this.pname,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1 / 2,
      margin: EdgeInsets.only(top: 20),
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 40,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Productdesign(
              productimage: image,
              productname: pname,
              productprice: price,
              description: description,
            );
          }),
    );
  }
}
