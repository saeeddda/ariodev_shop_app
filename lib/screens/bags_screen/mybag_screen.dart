
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Scaffold(
      backgroundColor: DefaultLightColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: DefaultDimensions.defaultPadding),
            child: Icon(Icons.search,color: Colors.black,size: 32,),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultDimensions.defaultPadding),
              child: Text("My Bag",style: textTheme.headline1,),
            ),
            const SizedBox(height: 32),
            //Bag List
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return BagItemWidget();
              },
              ),
            ),

             //TextField
             Padding(
              padding: const EdgeInsets.fromLTRB(DefaultDimensions.defaultPadding,32,DefaultDimensions.defaultPadding,0),
              child: OffTextField(
                  textTheme: textTheme,
                  onPress: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: DefaultDimensions.defaultPadding,vertical: 52),
                          width: double.infinity,
                          height: 464,
                          decoration: const BoxDecoration(
                              color: DefaultLightColor.backgroundColor,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(34),topLeft: Radius.circular(34) )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                OffTextField(textTheme: textTheme, onPress: () => debugPrint("refresh list"),),
                                const SizedBox(height: 32),
                                Text("Your Promo Codes",style: textTheme.headline2,),
                                const SizedBox(height: 32),
                                Expanded(
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                  return OfferListItem(textTheme: textTheme);
                                },),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
              ),
            ),

            //total price txt
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultDimensions.defaultPadding,vertical: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total amount:" , style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor),),
                  Text("124 \$",style: textTheme.headline3,),
                ],
              ),
            ),

            //check out btn
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultDimensions.defaultPadding),
              child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(DefaultLightColor.primaryColor),
                minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
              ),
              child:const Text("CHECK OUT")),
            )
          ],
        ),
      ),
    );
  }
}

class OfferListItem extends StatelessWidget {
  const OfferListItem({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: DefaultLightColor.whiteColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0,4)
            ),
          ],
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [

          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8) , bottomLeft: Radius.circular(8) ),
              color: DefaultLightColor.primaryColor,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Personal offer",style: textTheme.headline3,),
                  const SizedBox(height: 4),
                  const Text("mypromocode2020"),
                ],
              ),
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 6,),
              const Text("6 days remaining",style: TextStyle(color: DefaultLightColor.secondaryTextColor),),
              const SizedBox(height:2),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(DefaultLightColor.primaryColor),
                      minimumSize: MaterialStateProperty.all(const Size(93, 36)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                  ),
                  child:const Text("Apply"))
            ],
          ),
          const SizedBox(width: 8,),
        ],
      ),
    );
  }
}

class OffTextField extends StatelessWidget {
   OffTextField({
    Key? key,
    required this.textTheme,
    required this.onPress
  }) : super(key: key);

  final TextTheme textTheme;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Container(
      height: 36,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0,4)
            ),
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: DefaultLightColor.whiteColor,
          hintText: "Enter your promo code",
          hintStyle: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    ),
      Positioned(
      right: 0,
      child: InkWell(
        onTap: () => onPress(),
        child: Container(
              width: 35,
              height: 36,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
          child: const Icon(Icons.arrow_forward_rounded,color: DefaultLightColor.whiteColor,),
            ),
      ),
    ),
      ],
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: DefaultLightColor.primaryColor,
      unselectedItemColor: DefaultLightColor.secondaryTextColor,
      currentIndex: 2,

      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "home",

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Shop",

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Bag",

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",

        ),
      ],

    );
  }
}

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Container(
      margin: const EdgeInsets.all(DefaultDimensions.defaultPadding),
      width: double.infinity,
      height: 104,
      decoration: BoxDecoration(
        color: DefaultLightColor.whiteColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          //image
          SizedBox(
            width: 100,
            child: Image.asset("assets/images/products/product-1.png",fit: BoxFit.cover,),
          ),
          //information
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title ** more vert icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("t-sherit",style: textTheme.headline3,),
                      const Icon(Icons.more_vert,color: DefaultLightColor.secondaryTextColor,)
                    ],
                  ),
                  //size && color txt
                  Row(children: [
                    Text("color : red",style: textTheme.subtitle1,),
                    const SizedBox(width: 16,),
                    Text("size : m",style: textTheme.subtitle1,),
                  ],),
                  const SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        padding: const EdgeInsets.only(bottom: 18),
                        decoration:  BoxDecoration(
                            color: DefaultLightColor.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0,4)
                              ),
                            ]
                        ),
                        child:  const Icon(Icons.minimize),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("2",style: textTheme.subtitle1,),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration:  BoxDecoration(
                            color: DefaultLightColor.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0,4)
                              ),
                            ]
                        ),
                        child:  const Icon(Icons.add),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text("56 \$",style: textTheme.headline4),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
