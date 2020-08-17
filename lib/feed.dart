import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/post.dart';

import 'package:instagram_clone/story.dart';

class Feed extends StatelessWidget {
  List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Seu story"),
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "SuzanaDias"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "AmáliaLima"),
    Story(
        "https://images.pexels.com/photos/1520760/pexels-photo-1520760.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "PatríciaCruz"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "JuliaDomingues"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Arnold"),
    Story(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "GeovannaVaz"),
    Story(
        "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "SabrinaLopez"),
    Story(
        "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "EmanuellyLima"),
    Story(
        "https://images.pexels.com/photos/1845208/pexels-photo-1845208.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "MicheleMendes"),
    Story(
        "https://images.pexels.com/photos/2869494/pexels-photo-2869494.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "ThaizAraujo")
  ];
  List<Post> posts = [
    Post(
      username: "FutMania",
      userImage:
          "https://avatars1.githubusercontent.com/u/41213419?s=460&u=1adbb84765da680818b7505ee3631a8128c06c39&v=4",
      postImage:
          "https://images.pexels.com/photos/270085/pexels-photo-270085.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      caption: "Estádio de futebol",
    ),
    Post(
      username: "Cartolouco",
      userImage:
          "https://avatars1.githubusercontent.com/u/41213419?s=460&u=1adbb84765da680818b7505ee3631a8128c06c39&v=4",
      postImage:
          "https://images.pexels.com/photos/1884576/pexels-photo-1884576.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      caption: "Mais uma rodada do campeonato inglês",
    ),
    Post(
      username: "lbjbrdev",
      userImage:
          "https://avatars1.githubusercontent.com/u/41213419?s=460&u=1adbb84765da680818b7505ee3631a8128c06c39&v=4",
      postImage:
          "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      caption: "Estádio de futebol",
    ),
    Post(
      username: "Jaca",
      userImage:
          "https://avatars1.githubusercontent.com/u/41213419?s=460&u=1adbb84765da680818b7505ee3631a8128c06c39&v=4",
      postImage:
          "https://images.pexels.com/photos/974509/pexels-photo-974509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      caption: "Estádio de futebol",
    ),
    Post(
      username: "BillGates",
      userImage:
          "https://avatars1.githubusercontent.com/u/41213419?s=460&u=1adbb84765da680818b7505ee3631a8128c06c39&v=4",
      postImage:
          "https://images.pexels.com/photos/1174746/pexels-photo-1174746.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      caption: "Estádio de futebol",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border:
                                Border.all(width: 3, color: Color(0xFF8e44ad))),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                              image: NetworkImage(story.image),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(story.name)
                    ],
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(posts[i].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(posts[i].username)
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                        FadeInImage(
                          image: NetworkImage(
                            posts[i].postImage,
                          ),
                          placeholder: NetworkImage(
                              "https://i.pinimg.com/originals/a2/dc/96/a2dc9668f2cf170fe3efeb263128b0e7.gif"),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.heart_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.comment_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.send_o),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.bookmark_o),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Sigmund,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Yassenia,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Dayana",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    text: " and",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin:
                              EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: posts[i].username,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "  ${posts[i].caption}",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "August 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
