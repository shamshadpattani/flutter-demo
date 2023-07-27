import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = [];

  void _getCategories(){
    categories = Category.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBox(),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left:20),
              child: Text('Category',style:TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w600),
              )
              ),
              SizedBox(height:12),
              Container(
                height: 120,
                color: Colors.white60,
                child:ListView.separated(itemCount:categories.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 20),
               separatorBuilder: (BuildContext context, int index) => SizedBox(width:20),
                  itemBuilder:(context,index){
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: categories[index].color.withOpacity(0.3),
                        borderRadius:BorderRadius.circular(15),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 50,height: 50,
                        decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                        ),
                        Text(categories[index].name,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.normal),)
                      ],
                    ),
                  );
                }, ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _searchBox() {
    return Container(
            margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
            decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4, spreadRadius: 0.0)]),
            child: TextField(
                decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(8),
              hintText: "Search Items",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/icons/search.svg"),
              ),
              suffixIcon: Container(
                width: 80,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        width: 2,
                        endIndent: 8,
                        color: Colors.grey,
                        thickness: 1,
                        indent: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset("assets/icons/equalizer-line.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

AppBar appBar() {
  return AppBar(
      title: Text('Demo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(color: Colors.white60, borderRadius: BorderRadius.circular(4)),
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/icons/arrow_left.svg",
                width: 20,
                height: 20,
              ))),
      actions: [
        GestureDetector(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(color: Colors.white60, borderRadius: BorderRadius.circular(4)),
                margin: const EdgeInsets.all(4),
                alignment: Alignment.center,
                width: 40,
                child: SvgPicture.asset(
                  "assets/icons/dot-menu.svg",
                  width: 20,
                  height: 20,
                )))
      ]);
}
