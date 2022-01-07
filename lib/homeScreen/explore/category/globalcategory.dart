import 'package:flutter/material.dart';

class Categorylist extends StatelessWidget {
  final String image;
  final Function() onpressss;
  final String categoryname;
  const Categorylist({
    this.image,
    this.onpressss,
    this.categoryname,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onpressss,
          child: Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 9,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Image(image: AssetImage(image)),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 14),
            child: Text(
              categoryname,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        )
      ],
    );
  }
}
