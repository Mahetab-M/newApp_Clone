import 'package:flutter/material.dart';
import 'package:newsapp_clone/Models/CategoryModel.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key,required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(category.CategoryImage)
              , fit: BoxFit.cover)
          ),
          child: Center(child: Text(category.CategoryName, style: TextStyle(color: Colors.white),)) ,
        ),
      ),
    );
  }
}
