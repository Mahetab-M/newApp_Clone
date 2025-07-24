import"package:flutter/material.dart";
import "../Models/CategoryModel.dart";
import "../components/category_card.dart";

class Categorylistview extends StatelessWidget {
  const Categorylistview({Key? key}) : super(key: key);
  final List<CategoryModel> categoryList = const [

    CategoryModel(CategoryImage: "Assets/Images/business.webp", CategoryName: "Business"),
    CategoryModel(CategoryImage: "Assets/Images/entertaiment.webp", CategoryName: "entertainment"),
    CategoryModel(CategoryImage: "Assets/Images/business.webp", CategoryName: "Business"),
    CategoryModel(CategoryImage: "Assets/Images/business.webp", CategoryName: "Business"),
    CategoryModel(CategoryImage: "Assets/Images/business.webp", CategoryName: "Business"),
    CategoryModel(CategoryImage: "Assets/Images/business.webp", CategoryName: "Business"),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 85,
        child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return CategoryCard(category: categoryList[index]);
            }),
      );
    }


  }



