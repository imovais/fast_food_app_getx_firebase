import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      color: Appcolor.grey,
      child: Row(
        children: [
          //first column
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/card02.png')),
                  border: Border.all(
                      color: Appcolor.primary, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          //second column
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
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
