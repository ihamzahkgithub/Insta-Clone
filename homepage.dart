import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/a.jpeg",
    "images/b.jpeg",
    "images/hh.jpeg",
    "images/c.jpeg",
    "images/kk.jpeg",
    "images/bulbon.png",
    "images/b.jpeg",
    "images/hh.jpeg",
  ];

  List<String> posts = [
    "images/a.jpeg",
    "images/b.jpeg",
    "images/hh.jpeg",
    "images/c.jpeg",
    "images/kk.jpeg",
    "images/bulbon.png",
    "images/b.jpeg",
    "images/hh.jpeg",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/title.png",
          height: 40,
        ),
        actions: [
          IconButton(
            focusColor: Colors.red,
            hoverColor: Colors.pink,
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
          ),
          IconButton(
            focusColor: Colors.red,
            hoverColor: Colors.pink,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            focusColor: Colors.red,
            hoverColor: Colors.pink,
            onPressed: () {},
            icon: const Icon(
              Icons.mark_chat_unread_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        edgeOffset: 12.1,
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //STORY SECTION
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: const AssetImage(
                              "images/story.png",
                            ),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "ihamza.k",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                //HEADER POSTS
                children: List.generate(
                    8,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundImage: const AssetImage(
                                      "images/story.png",
                                    ),
                                    child: CircleAvatar(
                                      radius: 9,
                                      backgroundImage: AssetImage(
                                        profileImages[index],
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("ihamza.k"),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),

                            //IMAGE POSTS

                            Image.asset(posts[index]),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.comment_bank,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.share_outlined,
                                    )),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.bookmark_border,
                                    )),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(text: "Liked By"),
                                        TextSpan(
                                          text: "soujourner",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: "and"),
                                        TextSpan(
                                          text: "444 others",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text:
                                              "This is the most ugly photo i ever seen in insta.",
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
