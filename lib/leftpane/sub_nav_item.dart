import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubNavItem extends StatelessWidget{
  /// declaration of variables with null safety
  final String title;
  final bool isSelected;
  final VoidCallback action;
  final IconData? icon1;
  final IconData? icon2; //parameter for second icon
  final double? textSize; //parameter for text size
  const SubNavItem(this.title, this.textSize, this.icon1,this.icon2, this.isSelected, this.action, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /// returning a container
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      /// making item clickable
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        color: isSelected ? Colors.deepPurple.withOpacity(0.15) : null,
        onPressed: action,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(icon1, color: Colors.white, size: 20, ),
            const SizedBox(width: 10,),
            Text(title, style: TextStyle(fontSize: textSize ?? 18,color: Colors.white, ),),
            const SizedBox(width: 20,),
            Icon(icon2, color: Colors.white, size: 20, ),
          ],
        ),
      ),
    );
  }
}