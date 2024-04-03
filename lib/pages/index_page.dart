import 'package:flutter/material.dart';
import 'package:instagram_sliced/resource/dumy_post.dart';
import 'package:instagram_sliced/uttils/post_spesifikasi.dart';
import 'package:instagram_sliced/uttils/shapes_story.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/igelogo.png'),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.heart_broken)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message_rounded)),
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return const ShapesStory(
                    width: 75,
                    height: 75,
                    name: "Gede",
                  );
                }),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) {
                final postData = dataDumy[index];
                return PostSpesifikasi(data: postData);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
