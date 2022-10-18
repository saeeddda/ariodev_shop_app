import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCardScreen extends StatelessWidget {
  const ProductCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: size.height / 1.95,
                child: CarouselSlider(
                  options: CarouselOptions(height: size.height / 1.95),
                  items: [1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: size.height / 1.95,
                            child: Image.asset("assets/images/image1.png"));
                      },
                    );
                  }).toList(),
                )),
          ],
        ),
      ),
    );
  }
}
