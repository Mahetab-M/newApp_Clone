import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newsapp_clone/Widgets/CategoryListView.dart';
import 'package:newsapp_clone/components/category_card.dart';

import '../Models/CategoryModel.dart';
import '../Models/NewsModel.dart';
import '../Widgets/NewsListView.dart';
import '../components/news_tile.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News" , style: TextStyle(color: Colors.black),),
              Text("App" , style: TextStyle(color: Colors.yellow),),
            ],
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child:
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Categorylistview(),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 32),),
          NewsListView()
          //Hast5dm SLiverList hya hya el listView.builder bs bst5dmha
          // lama akon mst5dma CustomScrollView w da 3shan y7sn el performance tb3an
          // Ha7ot el code fy el NewsListView nafsha
              // SliverToBoxAdapter(
              //   child: NewsListView(),
              // )
            ],
          )
    //hena msh ha3rf a3ml l page kolha scroll 3shan keda hast5dm CustomScrollView
        // Column(
        //   children: [
        //     Categorylistview(),
        //     SizedBox(height: 32),
        //     Expanded(
        //       child: NewsListView(),
        //     )
        //   ],
        // ),
      )

    );
  }


}

