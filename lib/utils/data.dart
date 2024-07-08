import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List populars = [
  {
    "image":
        "https://images.unsplash.com/photo-1544025162-d76694265947?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": true,
    "price": "\$20.50",
    "name": "Cheesy Stake",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1467453678174-768ec283a940?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": false,
    "name": "Greeny Salad",
    "price": "\$8.50",
    "description": "Breakfast aand Brunch - Juice and Smoothies",
    "time": "15-25 Min",
    "delivery_fee": "\$2.49 Delivery Fee",
    "rate": "4.5",
    "rate_number": "22"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1533630336171-85a2cde85463?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": false,
    "price": "\$8.50",
    "name": "Milk Breakfast",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1559058789-672da06263d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": false,
    "price": "\$6.90",
    "name": "Freshy Salmon",
    "description": "Breakfast and Brunch - Juice and Smoothies",
    "time": "15-25 Min",
    "delivery_fee": "\$2.49 Delivery Fee",
    "rate": "4.4",
    "rate_number": "22"
  },
];

List categories = [
  {"name": "Salad", "icon": FontAwesomeIcons.cloudMeatball},
  {"name": "Burger", "icon": FontAwesomeIcons.hamburger},
  {"name": "Drink", "icon": FontAwesomeIcons.wineGlass},
  {"name": "Soup", "icon": Icons.rice_bowl},
  {"name": "Snack", "icon": FontAwesomeIcons.cookie},
];

const List featured = [
  {
    "image":
        "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": true,
    "price": "\$18.75",
    "name": "Mix Pizza",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1543339308-43e59d6b73a6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\$12.50",
    "is_favorited": false,
    "name": "Greeny Salad",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.8",
    "rate_number": "273"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1511909525232-61113c912358?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_favorited": false,
    "name": "Greeny Salad",
    "price": "\$15.25",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "\$5.50",
    "name": "Greeny Salad",
    "description": "Breakfast and Brunch - American - Sandwich",
    "sources": "Egg - Salad",
    "is_favorited": true,
    "delivery_fee": "\$1.49 Delivery Fee",
    "rate": "4.5",
    "rate_number": "273"
  },
];

List data = [
  "Aloo Chaat",
  "Aloo Gobi",
  "Aloo Methi",
  "Baingan Hari Mirch",
  "Bengal Fish Biryani",
  'Bengal Fish Karahi',
  'Bengal Fry Fish',
  'Bengal King Prawn',
  'Bengal Salad',
  'Bhindi Bhajee',
  'Bhuna,Bhuna - Chicken',
  'Bhuna - Chicken Tikka',
  'Bhuna - King Prawn',
  'Bhuna - Lamb',
  'Bhuna - Prawn',
  'Bombay Aloo',
  'Bottle Coke',
  'Bottle Diet Coke',
  'Brinjal Bhajee',
  'Butter Chicken',
  'COBRA ( LARGE )',
  'COBRA (330ML)',
  'COBRA (660ML)',
  'Cauliflower Bhajee',
  'Chana Masala',
  'Chapati,Chicken Achar',
  'Chicken Balti',
  'Chicken Biryani',
  'Chicken Chaat',
  'Chicken Chaat Main',
  'Chicken Chilli Garlic',
  'Chicken Hari Mirch,Chicken Haryali,Chicken Karahi,Chicken Mysore,Chicken Pakora,Chicken Rezala,Chicken Roshni,Chicken Shashlick,Chicken Shashlick Curry,Chicken Sylhet,Chicken Tikka,Chicken Tikka (Main),Chicken Tikka Balti,Chicken Tikka Biryani,Chicken Tikka Chilli Masala,Chicken Tikka Garlic,Chicken Tikka Jalfrezi,Chicken Tikka Jeera,Chicken Tikka Karahi,Chicken Tikka Masala,Chicken Tikka Pasanda,Chicken Tikka Sizzler,Coke 1.5 ltr,Curry,Curry - Chicken,Curry - Chicken Tikka,Curry - King Prawn,Curry - Lamb,Curry - Prawn,Curry Sauce,Dall Samba,Dhansak,Dhansak - Chicken,Dhansak - Chicken Tikka,Dhansak - King Prawn,Dhansak - Lamb,Dhansak - Prawn,Dhansak Sauce,Diet Coke 1.5 ltr,Dupiaza,Dupiaza - Chicken,Dupiaza - Chicken Tikka,Dupiaza - King Prawn,Dupiaza - Lamb,Dupiaza - Prawn,Egg Paratha,Egg Rice,French Fries,Garlic Naan,Garlic Rice,Green Salad,Hazary Lamb,Hazary Lamb Chilli Garlic,House Red wine 75cl,House white wine 75cl,Keema Naan,Keema Rice,King Prawn Balti,King Prawn Biryani,King Prawn Butterfly,King Prawn Hari Mirch,King Prawn Karahi,King Prawn Puree,King Prawn Shaslick,Korma,Korma - Chicken,Korma - Chicken Tikka,Korma - King Prawn,Korma - Lamb,Korma - Prawn,Korma Sauce,Kulcha Naan,Kurma,Lal Mirch Chicken,Lal Mirch Lamb,Lamb Achar,Lamb Balti,Lamb Biryani,Lamb Chilli Garlic,Lamb Hari Mirch,Lamb Haryali,Lamb Karahi,Lamb Mysore,Lamb Persian,Lamb Rezala,Lamb Roshni,Lamb Shashlick,Lamb Shashlick Curry,Lamb Sylhet,Lamb Tikka,Lamb Tikka (Main),Lamb Tikka Balti,Lamb Tikka Biryani,Lamb Tikka Chilli Masala,Lamb Tikka Garlic,Lamb Tikka Jalfrezi,Lamb Tikka Jeera,Lamb Tikka Karahi,Lamb Tikka Masala,Lamb Tikka Pasanda,Lamb Tikka Sizzler,Lemon Rice,Lemonade 1.5 ltr,Lime Pickle,Madras,Madras - Chicken,Madras - Chicken Tikka,Madras - King Prawn,Madras - Lamb,Madras - Prawn,Madras Sauce,Mango Chutney,Masala Sauce,Meat Samosa,Methi,Methi - Chicken,Methi - Chicken Tikka,Methi - King Prawn,Methi - Lamb,Methi - Prawn,Mint Sauce,Mixed Starter,Mixed Vegetable Curry,Mushroom,Mushroom - Chicken,Mushroom - Chicken Tikka,Mushroom - King Prawn,Mushroom - Lamb,Mushroom - Prawn,Mushroom Bhajee,Mushroom Rice,Muttar Paneer,Onion Bhajee,Onion Bhaji,Onion Chutney,Onion Naan,Onion Rice,Paneer Shaslick,Paneer Tikka Balti,Paneer Tikka Karahi,Paneer Tikka Masala,Paneer Tikka Sizzler,Paratha,Pathia,Pathia - Chicken,Pathia - Chicken Tikka,Pathia - King Prawn,Pathia - Lamb,Pathia - Prawn,Perrier Water (750ml),Persian Chicken Biryani,Persian Lamb Biryani,Peshwari Naan,Pilau Rice,Plain Naan,Plain Papadum,Plain Rice,Prawn Balti,Prawn Biryani,Prawn Karahi,Prawn Puree,Prier Water (750ml),Puree,Raitha,Red Sauce,Rogon,Rogon - Chicken,Rogon - Chicken Tikka,Rogon - King Prawn,Rogon - Lamb,Rogon - Prawn,Royal Paneer,Saag,Saag - Chicken,Saag - Chicken Tikka,Saag - King Prawn,Saag - Lamb,Saag - Prawn,Saag Aloo,Saag Bhajee',
  'Saag Dall',
  'Saag Paneer',
  'Saag Rice',
  'Sheek Kebab',
  'Sheek Kebab (Main)',
  'Sheek Kehab',
  'Special Fried Rice',
  'Spicy Papadum',
  'Still Water (750ml)',
  'Stuffed Paratha',
  'Tandoori Chicken',
  'Tandoori Chicken (1/4)',
  'Tandoori Chicken (Main)',
  'Tandoori Chicken Masala',
  'Tandoori Fish',
  'Tandoori Fish (Main)',
  'Tandoori King Prawn Garlic',
  'Tandoori King Prawn Masala',
  'Tandoori Mixed Grill',
  'Tandoori Roti',
  'Tarka Dall',
  'Vegetable Balti',
  'Vegetable Biryani',
  'Vegetable Karahi',
  'Vegetable Mysore',
  'Vegetable Rice',
  'Vegetable Roll',
  'Vegetable Samosa',
  'Vindaloo',
  'Vindaloo - Chicken',
  'Vindaloo - Chicken Tikka',
  'Vindaloo - King Prawn',
  'Vindaloo - Lamb',
  'Vindaloo - Prawn',
  'Vindaloo Sauce'
];

String myString =
    "Salad,Bhindi Bhajee,Bhuna,Bhuna - Chicken,Bhuna - Chicken Tikka,Bhuna - King Prawn,Bhuna - Lamb,Bhuna - Prawn,Bombay Aloo,Bottle Coke,Bottle Diet Coke,Brinjal Bhajee,Butter Chicken,COBRA ( LARGE ),COBRA (330ML),COBRA (660ML),Cauliflower Bhajee,Chana Masala,Chapati,Chicken Achar,Chicken Balti,Chicken Biryani,Chicken Chaat,Chicken Chaat Main,Chicken Chilli Garlic,Chicken Hari Mirch,Chicken Haryali,Chicken Karahi,Chicken Mysore,Chicken Pakora,Chicken Rezala,Chicken Roshni,Chicken Shashlick,Chicken Shashlick Curry,Chicken Sylhet,Chicken Tikka,Chicken Tikka (Main),Chicken Tikka Balti,Chicken Tikka Biryani,Chicken Tikka Chilli Masala,Chicken Tikka Garlic,Chicken Tikka Jalfrezi,Chicken Tikka Jeera,Chicken Tikka Karahi,Chicken Tikka Masala,Chicken Tikka Pasanda,Chicken Tikka Sizzler,Coke 1.5 ltr,Curry,Curry - Chicken,Curry - Chicken Tikka,Curry - King Prawn,Curry - Lamb,Curry - Prawn,Curry Sauce,Dall Samba,Dhansak,Dhansak - Chicken,Dhansak - Chicken Tikka,Dhansak - King Prawn,Dhansak - Lamb,Dhansak - Prawn,Dhansak Sauce,Diet Coke 1.5 ltr,Dupiaza,Dupiaza - Chicken,Dupiaza - Chicken Tikka,Dupiaza - King Prawn,Dupiaza - Lamb,Dupiaza - Prawn,Egg Paratha,Egg Rice,French Fries,Garlic Naan,Garlic Rice,Green Salad,Hazary Lamb,Hazary Lamb Chilli Garlic,House Red wine 75cl,House white wine 75cl,Keema Naan,Keema Rice,King Prawn Balti,King Prawn Biryani,King Prawn Butterfly,King Prawn Hari Mirch,King Prawn Karahi,King Prawn Puree,King Prawn Shaslick,Korma,Korma - Chicken,Korma - Chicken Tikka,Korma - King Prawn,Korma - Lamb,Korma - Prawn,Korma Sauce,Kulcha Naan,Kurma,Lal Mirch Chicken,Lal Mirch Lamb,Lamb Achar,Lamb Balti,Lamb Biryani,Lamb Chilli Garlic,Lamb Hari Mirch,Lamb Haryali,Lamb Karahi,Lamb Mysore,Lamb Persian,Lamb Rezala,Lamb Roshni,Lamb Shashlick,Lamb Shashlick Curry,Lamb Sylhet,Lamb Tikka,Lamb Tikka (Main),Lamb Tikka Balti,Lamb Tikka Biryani,Lamb Tikka Chilli Masala,Lamb Tikka Garlic,Lamb Tikka Jalfrezi,Lamb Tikka Jeera,Lamb Tikka Karahi,Lamb Tikka Masala,Lamb Tikka Pasanda,Lamb Tikka Sizzler,Lemon Rice,Lemonade 1.5 ltr,Lime Pickle,Madras,Madras - Chicken,Madras - Chicken Tikka,Madras - King Prawn,Madras - Lamb,Madras - Prawn,Madras Sauce,Mango Chutney,Masala Sauce,Meat Samosa,Methi,Methi - Chicken,Methi - Chicken Tikka,Methi - King Prawn,Methi - Lamb,Methi - Prawn,Mint Sauce,Mixed Starter,Mixed Vegetable Curry,Mushroom,Mushroom - Chicken,Mushroom - Chicken Tikka,Mushroom - King Prawn,Mushroom - Lamb,Mushroom - Prawn,Mushroom Bhajee,Mushroom Rice,Muttar Paneer,Onion Bhajee,Onion Bhaji,Onion Chutney,Onion Naan,Onion Rice,Paneer Shaslick,Paneer Tikka Balti,Paneer Tikka Karahi,Paneer Tikka Masala,Paneer Tikka Sizzler,Paratha,Pathia,Pathia - Chicken,Pathia - Chicken Tikka,Pathia - King Prawn,Pathia - Lamb,Pathia - Prawn,Perrier Water (750ml),Persian Chicken Biryani,Persian Lamb Biryani,Peshwari Naan,Pilau Rice,Plain Naan,Plain Papadum,Plain Rice,Prawn Balti,Prawn Biryani,Prawn Karahi,Prawn Puree,Prier Water (750ml),Puree,Raitha,Red Sauce,Rogon,Rogon - Chicken,Rogon - Chicken Tikka,Rogon - King Prawn,Rogon - Lamb,Rogon - Prawn,Royal Paneer,Saag,Saag - Chicken,Saag - Chicken Tikka,Saag - King Prawn,Saag - Lamb,Saag - Prawn,Saag Aloo,Saag Bhajee,Saag Dall,Saag Paneer,Saag Rice,Sheek Kebab,Sheek Kebab (Main),Sheek Kehab,Special Fried Rice,Spicy Papadum,Still Water (750ml),Stuffed Paratha,Tandoori Chicken,Tandoori Chicken (1/4),Tandoori Chicken (Main),Tandoori Chicken Masala,Tandoori Fish,Tandoori Fish (Main),Tandoori King Prawn Garlic,Tandoori King Prawn Masala,Tandoori Mixed Grill,Tandoori Roti,Tarka Dall,Vegetable Balti,Vegetable Biryani,Vegetable Karahi,Vegetable Mysore,Vegetable Rice,Vegetable Roll,Vegetable Samosa,Vindaloo,Vindaloo - Chicken,Vindaloo - Chicken Tikka,Vindaloo - King Prawn,Vindaloo - Lamb,Vindaloo - Prawn,Vindaloo Sauce";
List<String> myList = myString.split(", ");
