import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home-page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          SizedBox(
            height: MediaQuery.of(context).size.height-112,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/demo_pic.jpg"),
                      ),
                      title: Text("Foyzur Rahaman"),
                      subtitle: Text("Mirpur, Dhaka."),
                      trailing: IconButton(onPressed: (){},icon: Icon(Icons.more_horiz,color: Colors.black87,),),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
