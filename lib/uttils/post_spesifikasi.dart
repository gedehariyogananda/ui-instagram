import 'package:flutter/material.dart';
import 'package:instagram_sliced/resource/dumy_post.dart';
import 'package:instagram_sliced/uttils/shapes_story.dart';

class PostSpesifikasi extends StatelessWidget {
  final DataDumy data;

  const PostSpesifikasi({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const ShapesStory(width: 40, height: 40),
                Text(data.nameProfile),
              ]),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ],
              )
            ],
          ),
        ),
        Container(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                data.imagePost,
                // fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.indigo,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 15.0,
                      )),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.bookmark_border))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${data.likePost} suka "),
              Row(
                children: [
                  Text(
                    data.nameProfile,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: " ${data.captionPost} ",
                          style: const TextStyle(color: Colors.black)),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
