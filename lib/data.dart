import 'package:travel_app_ui_assignment/utilities/app_icons.dart';
import 'package:travel_app_ui_assignment/model/category.dart';
import 'package:travel_app_ui_assignment/model/popular_packages.dart';

final baga = Categories(
    imageUrl: bagaBeach,
    name: 'Baga Beach',
    address: 'Goa, India'
);

final kuta = Categories(
    imageUrl: kutaIcon,
    name: 'Kuta Beach',
    address: 'Bali, Indonesia'
);

final choosenCategory = [kuta, baga, kuta, baga, kuta, baga, kuta, baga, kuta, baga];


final kutaResort = PopularPackages(
   imageUrl: kutaResortImage,
   name: 'Kuta Resort',
   price: '20000',
   description: 'A resort is a place used for\n vacation, relaxation or as a day...',
   rating: 4.8,

);

final bugaResort = PopularPackages(
  imageUrl: bugaResortImage,
  name: 'Baga Beach',
  price: '15000',
  description: 'A resort is a place used for\n vacation, relaxation or as a day...',
  rating: 4.8,

);

List<PopularPackages> choosenPackages = [kutaResort, bugaResort, kutaResort];

