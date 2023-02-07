import 'package:flutter/material.dart';
import 'package:travel_app_ui_assignment/app_icons.dart';
import 'package:travel_app_ui_assignment/model/category.dart';

import 'model/popular_packages.dart';

const detailInfo =
    'One of the most happening beaches in Goa, Baga Beach is where you\n will find water sports, fine dining restaurants, bars, and clubs. Situated\n in North Goa, Baga Beach is bordered by Calangute and Anjuna \nBeaches.';

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
            )),
        Positioned(
          right: 24,
          bottom: 180,
          child: Row(
            children: [
              Image.asset(
                locationIcon,
                height: 14.5,
                width: 13.5,
              ),
              const SizedBox(
                width: 7.25,
              ),
              const Text(
                'Goa,india',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                ),

              )
            ],
          ),
        ),
        const Positioned(
          left: 20,
          bottom: 64 ,
          child:  Text(
            detailInfo,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                decoration: TextDecoration.none
            ),
          ),
        ),
        const Positioned(
          left: 25,
           bottom: 31,
            child: Text(
                '₹15,000/person',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            )
        ),
        Positioned(
            bottom: 20,
            right: 24,
            child: Container(
              height: 45,
              width: 103,
              decoration: BoxDecoration(
                color: Color(0xFFFCD240),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                    'Book Now',
                  style: TextStyle(
                    color: Color(0xFF0C0507),
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            )
        )
      ],
    );
  }

}
