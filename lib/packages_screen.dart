import 'package:flutter/material.dart';
import 'package:travel_app_ui_assignment/model/category.dart';

import 'model/popular_packages.dart';

class PackagesDetailsScreen extends StatefulWidget {
  const PackagesDetailsScreen({Key? key, required this.packages})
      : super(key: key);
  final PopularPackages packages;

  @override
  State<PackagesDetailsScreen> createState() => _PackagesDetailsScreenState();
}

class _PackagesDetailsScreenState extends State<PackagesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.packages.imageUrl,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
              color: Colors.white,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {},
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
            left: 25,
            bottom: 175,
            child: Text(
              widget.packages.name,
              style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ))
      ],
    );
  }
}
