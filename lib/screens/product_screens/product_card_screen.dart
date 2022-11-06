import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/login_register_screens/components/button_component.dart';

class ProductCardScreen extends StatelessWidget {
  const ProductCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 80,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -5),
                ),
              ]),
            ),
            Positioned(
              top: 15,
              bottom: 15,
              left: 20,
              right: 20,
              child: ButtonBtn().primaryButton('Add To Card'),
            ),
          ],
        ),
        backgroundColor: DefaultLightColor.backgroundColor,
        appBar: AppBar(
          title: const Text(
            'Short dress',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                carouselController: CarouselController(),
                options: CarouselOptions(height: size.height / 1.95),
                items: [
                  "assets/images/products/product-big-1.png",
                  "assets/images/products/product-big-2.png"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: size.height / 1.95,
                          child: Image.asset(
                            i,
                            fit: BoxFit.fitWidth,
                          ));
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width / 2.71,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.red)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                          child: DropdownButton(
                              value: 'Size',
                              underline: const SizedBox.shrink(),
                              icon: const Icon(Icons.keyboard_arrow_down_sharp),
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(8),
                              items: const [
                                DropdownMenuItem(
                                  value: "Size",
                                  child: Text("Size"),
                                ),
                              ],
                              onChanged: (value) {}),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2.71,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                          child: DropdownButton(
                              value: 'Black',
                              underline: const SizedBox.shrink(),
                              icon: const Icon(Icons.keyboard_arrow_down_sharp),
                              isExpanded: true,
                              items: const [
                                DropdownMenuItem(
                                  value: "Black",
                                  child: Text("Black"),
                                ),
                              ],
                              onChanged: (value) {}),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                color: Color.fromARGB(255, 210, 210, 210))
                          ]),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            CupertinoIcons.heart,
                            color: DefaultDarkColor.secondaryTextColor,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'H&M',
                          style: textTheme.headline2,
                        ),
                        Text(
                          'Short black dress',
                          style: textTheme.caption,
                        )
                      ],
                    ),
                    Text(
                      '\$19.99',
                      style: textTheme.headline2,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 20,
                      initialRating: 5,
                      minRating: 1,
                      maxRating: 5,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      glow: false,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text(
                      '(10)',
                      style: textTheme.caption,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                child: Text(
                  'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                  style: textTheme.bodyText2,
                ),
              ),
              const Divider(
                color: DefaultLightColor.secondaryTextColor,
                thickness: 0.3,
              ),
              productScreenDetailsBtn(size, textTheme, 'Item details'),
              const Divider(
                color: DefaultLightColor.secondaryTextColor,
                thickness: 0.3,
              ),
              productScreenDetailsBtn(size, textTheme, 'Shipping info'),
              const Divider(
                color: DefaultLightColor.secondaryTextColor,
                thickness: 0.3,
              ),
              productScreenDetailsBtn(size, textTheme, 'Support'),
              const Divider(
                color: DefaultLightColor.secondaryTextColor,
                thickness: 0.3,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You can also like this',
                      style: textTheme.headline3,
                    ),
                    Text(
                      '12 item',
                      style: textTheme.caption,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 280.0,
                child: NewProductCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productScreenDetailsBtn(
      Size size, TextTheme textTheme, String itemTitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        width: size.width,
        height: 47,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(itemTitle, style: textTheme.bodyText1),
            const Icon(Icons.chevron_right_sharp)
          ],
        ),
      ),
    );
  }
}
