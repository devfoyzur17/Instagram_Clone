import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home-page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  int postImage =1;
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          "assets/images/instagram_text.png",
          width: 100,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Color(0xff262626),
              )),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(
                  "assets/images/Shape.png",
                ),
                color: Color(0xff262626),
              )),
        ],
      ),
      body: ListView(
        children: [
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.pink,
                          Colors.orange,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/demo_pic.jpg"),
                      ),
                    ),
                  ),
                  Text("Foyzur")
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/demo_pic.jpg"),
                          ),
                          title: Text("Foyzur Rahaman"),
                          subtitle: Text("Mirpur, Dhaka."),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          child: Stack(
                            children: [
                              PageView.builder(

                                onPageChanged: (value){
                                  setState(() {
                                    postImage = value+1;
                                  });
                                },
                                physics: BouncingScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (context, index) =>
                                    Image.asset("assets/images/demo_img.png"),
                              ),
                              Positioned(
                                  top: 20,
                                  right: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black54
                                    ),

                                      child: Text("$postImage/3",style: TextStyle(color: Colors.white),)))
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        AssetImage("assets/images/Like.png"),
                                        color: Colors.black,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        AssetImage("assets/images/Comment.png"),
                                        color: Colors.black,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        AssetImage("assets/images/Shape.png"),
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            Icon(Icons.more_horiz),
                            Expanded(
                              child: Row(
                                children: [
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        AssetImage("assets/images/Save.png"),
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "550 Like",
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "50 Comments",
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
