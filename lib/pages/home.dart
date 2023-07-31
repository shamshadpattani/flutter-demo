import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/models/diet.dart';

import '../models/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = [];
  List<Diet> diets = [];

  void _getInitialValues() {
    categories = Category.getCategories();
    diets =Diet.getDiet();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialValues();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBox(),
          SizedBox(height: 30),
          _category(),
        SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Padding(padding: EdgeInsets.only(left: 24),
              child: Text("Recommentaion\n for  diet",
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),)
              ),
              SizedBox(height: 15),
              Container(
                height: 300,
                color: Colors.white,
                child: ListView.separated(
                   scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20,right: 20),
                    separatorBuilder: (BuildContext context, int index) => SizedBox(width: 20),
                    itemCount: diets.length,
                itemBuilder: (context, index) {
                return Container(
                width: 280,
                decoration: BoxDecoration(
                color: diets[index].color.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),),
                child:Column(
                children: [
                Container(
                  width :150,
                  height:150,
                  child: Image.network(diets[index].icon)),
                  Text(diets[index].name)
                ],
       )
          );
        })
                      )
         ]
        )
      ]
      )
    );

  }

  Column _category() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Category',
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                )),
            SizedBox(height: 16),
            Container(
              height: 120,
              color: Colors.white60,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (BuildContext context, int index) => SizedBox(width: 20),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].color.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            child: Image.network(categories[index].img)),
                        Text(
                          categories[index].name,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        );
  }

  Container _searchBox() {
    return Container(
        margin: EdgeInsets.only(top: 20, right: 20, left:20, bottom: 20),
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
