
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(16),
          shape: BoxShape.rectangle,
          color: Colors.white.withOpacity(.1),
        ),
         alignment: Alignment.center,
        child: Icon(Icons.search,size: 28,),
      ),
    );
  }
}
