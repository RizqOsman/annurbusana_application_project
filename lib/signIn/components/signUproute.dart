import 'package:flutter/material.dart';
import 'package:annurbusana_application_project/pagerouteanimation.dart';
import 'package:annurbusana_application_project/signUp/signUp.dart';

class Signuproute extends StatelessWidget {
  const Signuproute({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Sign in to Continue',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: TextButton(
            onPressed: () {
              // ignore: prefer_const_constructors
              Navigator.push(context, createdroute(Signuppage()));
            },
            child: Text(
              'Sign Up',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        )
      ],
    );
  }
}
