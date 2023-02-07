import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui_assignment/app_icons.dart';
import 'package:travel_app_ui_assignment/data.dart';
import 'package:travel_app_ui_assignment/packages_screen.dart';
import 'package:travel_app_ui_assignment/profile.dart';
import 'package:travel_app_ui_assignment/section_header.dart';

import 'model/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(left: 24, top: 45, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Profile(),
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text('Where do you\nwant to explore today?'),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(0, 0, 0, 0.03),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          const SizedBox(
            height: 30,
          ),
          SectionHeader(sectionText: 'Choose Category', optionText: 'See all'),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF5DC720)),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(beachTree),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Beach')
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(10)),
                // margin: const EdgeInsets.only(right: 21),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(mountainIcon),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Mountains')
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        Categories category = choosenCategory[index];
                        return buildCategory(context, category);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SectionHeader(
                      sectionText: 'Popular Package', optionText: 'See all'),
                  const SizedBox(
                    height: 20,
                  ),
                  buildPackages()
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Container buildCategory(BuildContext context, Categories category) {
    bool isFavorite;
    return Container(
      margin: const EdgeInsets.only(right: 19.49),
      height: 246,
      width: 186,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          // border: Border.all(color: Colors.black),
          image: DecorationImage(
              image: AssetImage(category.imageUrl), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              right: 10,
              top: 10,
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                      onPressed: () {},
                      iconSize: 16,
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )))),
          Positioned(
              bottom: 66.5,
              left: 20.51,
              child: Text(
                category.name,
                style: const TextStyle(color: Colors.white),
              )),
          Positioned(
              bottom: 42.34,
              left: 22.76,
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
                  Text(
                    category.address,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              )),
        ],
      ),
    );
  }

  buildPackages() {
    List<Widget> packagesList = [];
    for (var packages in choosenPackages) {
      packagesList.add(GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PackagesDetailsScreen(
                      packages: packages,
                    ))),
        child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(width: 1.0, color: Colors.grey[200]!)),
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 19.0, vertical: 20.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    packages.imageUrl,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        packages.name,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '₹${packages.price}',
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      // RatingStars(restaurant.rating),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "${packages.rating}",
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ));
    }
    return Column(
      children: packagesList,
    );
  }
}



