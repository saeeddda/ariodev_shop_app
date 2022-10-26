import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_fonts.dart';
import 'package:shop_app/screens/login_register_screens/components/button_component.dart';

class RatingReviewScreen extends StatelessWidget {
  const RatingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SizedBox(
          width: 128,
          height: 36,
          child: FloatingActionButton.extended(
              backgroundColor: Colors.red,
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Container(
                    width: size.width,
                    height: size.height / 1.7,
                    decoration: const BoxDecoration(
                      color: DefaultLightColor.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 36),
                        Text(
                          'What is you rate?',
                          style: textTheme.headline3,
                        ),
                        const SizedBox(height: 17),
                        RatingBar.builder(
                          itemSize: 45,
                          initialRating: 0,
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
                        const SizedBox(height: 33),
                        SizedBox(
                          width: size.width / 1.5,
                          child: Text(
                            'Please share your opinion about the product',
                            style: textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(24),
                          child: TextField(
                            maxLines: 9,
                            decoration:
                                InputDecoration(hintText: 'Your review'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: ButtonBtn().primaryButton("SEND REVIEW"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              label: Row(
                children: const [
                  Icon(
                    CupertinoIcons.pencil,
                    size: 20,
                  ),
                  Text(
                    'Write a review',
                    style: TextStyle(
                        fontFamily: DefaultFont.englishFont,
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ),
        backgroundColor: DefaultLightColor.backgroundColor,
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height / 10,
                  child: Text(
                    "Rating&Reviews",
                    style: textTheme.headline1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "4.3",
                          style: textTheme.headline2?.copyWith(fontSize: 44),
                        ),
                        Text(
                          "23 ratings",
                          style: textTheme.subtitle2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RatingBarIndicator(
                              rating: 5,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 18,
                              direction: Axis.horizontal,
                            ),
                            RatingBarIndicator(
                              rating: 4,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 4,
                              itemSize: 18,
                              direction: Axis.horizontal,
                            ),
                            RatingBarIndicator(
                              rating: 3,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 3,
                              itemSize: 18,
                              direction: Axis.horizontal,
                            ),
                            RatingBarIndicator(
                              rating: 2,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 2,
                              itemSize: 18,
                              direction: Axis.horizontal,
                            ),
                            RatingBarIndicator(
                              rating: 1,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 1,
                              itemSize: 18,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              width: 114,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              width: 40,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              width: 29,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              width: 15,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('12'),
                        SizedBox(height: 2),
                        Text('5'),
                        SizedBox(height: 2),
                        Text('4'),
                        SizedBox(height: 2),
                        Text('2'),
                        SizedBox(height: 2),
                        Text('0'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '8 reviews',
                  style: textTheme.headline2,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 327,
                  height: 313,
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 311,
                        height: 297,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helene Moore',
                                style: textTheme.headline4,
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBarIndicator(
                                    rating: 4,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 18,
                                    direction: Axis.horizontal,
                                  ),
                                  const Text('June 5, 2019'),
                                ],
                              ),
                              const SizedBox(height: 9),
                              Text(
                                "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                                style: textTheme.bodyText2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text('Helpful'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color:
                                            DefaultDarkColor.secondaryTextColor,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            Image.asset('assets/images/avatar/avatar-6.png')
                                .image,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 327,
                  height: 313,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 311,
                          height: 297,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Helene Moore',
                                  style: textTheme.headline4,
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBarIndicator(
                                      rating: 4,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 18,
                                      direction: Axis.horizontal,
                                    ),
                                    const Text('June 5, 2019'),
                                  ],
                                ),
                                const SizedBox(height: 9),
                                Text(
                                  "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                                  style: textTheme.bodyText2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text('Helpful'),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.thumb_up_alt_outlined,
                                          color: DefaultDarkColor
                                              .secondaryTextColor,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              Image.asset('assets/images/avatar/avatar-6.png')
                                  .image,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
