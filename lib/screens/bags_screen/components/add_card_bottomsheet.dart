import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/screens/bags_screen/components/custom_bottom.dart';

Future<dynamic> addCardBottomSheet(BuildContext context,TextTheme textTheme) {
  const bodyMargin = DefaultDimensions.defaultPadding;
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {

      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          padding: const EdgeInsets.fromLTRB(bodyMargin, 47, bodyMargin, 8),
          height: 572,
          decoration: const BoxDecoration(
              color: DefaultLightColor.backgroundColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Add new card",style: textTheme.headline3,),
              const SizedBox(height: 18),
              informationTextField("Name on card", false, textTheme,false,null),
              const SizedBox(height: 20),
              informationTextField("Card number", false, textTheme,true,Image.asset("assets/icons/master.png",width: 64,)),
              const SizedBox(height: 20),
              informationTextField("Expire Date", false, textTheme,true,null),
              const SizedBox(height: 20),
              informationTextField("CVV", false, textTheme,true,const Icon(Icons.question_mark)),
              const SizedBox(height: 29),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    fillColor: MaterialStateProperty.all(
                        DefaultLightColor.primaryTextColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Text(
                    "Set as default payment method",
                    style: textTheme.subtitle1,
                  )
                ],
              ),
              const CustomBottom(title: "ADD CARD")
            ],
          ),
        ),
      ) ;

    },
  );

}

Widget informationTextField(String lable, bool isPassword, TextTheme textTheme,bool isNumber,Widget? suffixItem) {
  return SizedBox(
    width: double.infinity,
    height: DefaultDimensions.defaultTextFieldHeight,
    child: TextField(
      keyboardType: isNumber? TextInputType.number : null,
      obscureText: isPassword ? true : false,
      cursorColor: DefaultDarkColor.darkColor,
      cursorHeight: DefaultDimensions.defaultCursorHeight,
      style: textTheme.subtitle1,
      decoration: InputDecoration(
        suffixIcon:suffixItem,
        label: Text(
          lable,
          style: textTheme.subtitle2,
        ),
      ),
    ),
  );
}
