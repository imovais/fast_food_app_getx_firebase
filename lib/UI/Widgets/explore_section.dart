import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 3,
      //color: Appcolor.grey,
      child: Row(
        children: [
          //first column
          const Expanded(
            child: MyCard(myytext: 'Everyday \nValue', image: 'images/p1.png'),
          ),
          //second column
          Expanded(
            child: Column(
              children: [
                const Expanded(
                    child: MyCard(myytext: 'Hello', image: 'images/p1.png')),
                Expanded(
                  child: Container(
                    color: Colors.blue.shade200,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue.shade700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green.shade200,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.myytext,
    required this.image,
  });

  final String myytext;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.,
        children: [
          Positioned(
              top: 10,
              left: 5,
              child: Center(
                  child: Text(
                myytext,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ))),
          Positioned(
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage('images/p1.png')),
                  // border: Border.all(
                  //     color: Appcolor.primary, style: BorderStyle.solid),
                  // borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
