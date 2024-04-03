import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_sliced/uttils/button_pressed.dart';
import 'package:instagram_sliced/uttils/shapes_story.dart';
import 'package:instagram_sliced/uttils/text_profile_detail.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock_outline),
                  ),
                  const Text(
                    "_Guaryyyy",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down)),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_box_outlined)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(flex: 1, child: ShapesStory(width: 70, height: 70)),
                  Expanded(
                    flex: 1,
                    child: TextProfileDetail(jumlah: 12, name: "postingan"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextProfileDetail(jumlah: 94, name: "mengikuti"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextProfileDetail(jumlah: 110, name: "pengikut"),
                  ),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text("aryyyy"),
              const Text("nothings new"),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.link,
                          size: 15.0,
                          color: Colors.blue,
                        ), // Ikon
                        SizedBox(width: 4.0),
                        Text(
                          "github.com/gedehariyogananda", // Teks
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ButtonPressed(name: "Edit Profile"),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 3,
                    child: ButtonPressed(name: "Edit Profile"),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: ButtonPressed(
                      icon: Icon(Icons.person_add),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ShapesStory(
                      width: 60,
                      height: 60,
                      name: "yowww",
                    );
                  },
                ),
              ),
              const TabBar.secondary(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.grid_on,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
