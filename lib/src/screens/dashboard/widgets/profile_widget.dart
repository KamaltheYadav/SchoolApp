import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.indigo,
        leading: Image.asset("images/woman.png"),
        pinned: true,
        // title: Text('Kamal Yadav'),
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          // centerTitle: true,
          title: Text('Kamal Yadav'),
          collapseMode: CollapseMode.parallax,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    ]);
  }
}
