import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Break fast',
        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
           onTap: (){},
            child: Container(
          decoration:BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(4)),
          margin:const EdgeInsets.all(4),
          alignment: Alignment.center,
          child: SvgPicture.asset("assets/icons/arrow_left.svg",width: 20,height:20,))
          ),
        actions: [
          GestureDetector(
          onTap: (){},
         child: Container(
            decoration:BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(4)),
            margin:const EdgeInsets.all(4),
            alignment: Alignment.center,
            width: 40,
            child: SvgPicture.asset("assets/icons/dot-menu.svg",width: 20,height:20,))],
       ),
    );
  }
}
