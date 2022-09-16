// import 'package:blog_minimal/screens/create_post.dart';
// import 'package:/widgets/post_cell_widget.dart';

import 'package:flutter/material.dart';

import '../models/shimmer_widget.dart';
import '../widgets/post_cell_widget.dart';

class Post {
  final String title;
  final String image;
  final String author;
  final String date;

  Post(
      {required this.title,
      required this.image,
      required this.author,
      required this.date});
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool isloading = false;

  final data = [
    Post(
      image: 'assets/images/ikigai.jpg',
      title: 'Finding your ikigai in your middle age',
      author: 'John Johny',
      date: '25 Mar 2020',
    ),
    Post(
      image: 'assets/images/leader.jpg',
      title: 'How to Lead Before You Are in Charge',
      author: 'John Johny',
      date: '24 Mar 2020',
    ),
    Post(
      image: 'assets/images/minimal.jpg',
      title: 'How Minimalism Brought Me',
      author: 'John Johny',
      date: '15 Mar 2020',
    ),
    Post(
      image: 'assets/images/colors.jpg',
      title: 'The Most Important Color In UI Design',
      author: 'John Johny',
      date: '11 Mar 2020',
    ),
    Post(
      image: 'assets/images/leader.jpg',
      title: 'How to Lead Before You Are in Charge',
      author: 'John Johny',
      date: '24 Mar 2020',
    ),
    Post(
      image: 'assets/images/leader.jpg',
      title: 'How to Lead Before You Are in Charge',
      author: 'John Johny',
      date: '24 Mar 2020',
    ),
    Post(
      image: 'assets/images/minimal.jpg',
      title: 'How Minimalism Brought Me',
      author: 'John Johny',
      date: '15 Mar 2020',
    ),
    Post(
      image: 'assets/images/colors.jpg',
      title: 'The Most Important Color In UI Design',
      author: 'John Johny',
      date: '11 Mar 2020',
    ),
    Post(
      image: 'assets/images/leader.jpg',
      title: 'How to Lead Before You Are in Charge',
      author: 'John Johny',
      date: '24 Mar 2020',
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadData();


  }
  LoadData(){
    setState(() {
      
    });
  }

  Future<dynamic> Onrefresh() async {
    await Future.delayed(Duration(seconds: 1));
    LoadData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Revamph Prompt',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 0,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFD810),
        elevation: 0,
        onPressed: () => null,
      ),
      body: RefreshIndicator(
        onRefresh: Onrefresh,
        child: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
               
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for articles, author, and tags',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:
                      [ 
                    Text(
                      'Your feed',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      
                      child: ListView.separated(

                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final post = data[index];
                          return Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: PostCellWidget(
                                  title: post.title,
                                  image: post.image,
                                  author: post.author,
                                  date: post.date,
                                  onClick: () => null),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // Widget buildShimmer() => ListView.builder(
  //       shrinkWrap: true,
  //       itemBuilder: (context, index) => ListTile(
  //         leading: Shimmerwidget.circular(
  //           width: 64,
  //           height: 64,
  //           shapeBorder: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(12),
  //           ),
  //         ),
  //         title: Shimmerwidget.rectangular(height: 16),
  //         subtitle: Shimmerwidget.rectangular(height: 14),
  //       ),
  //       itemCount: isloading ? 6 : 10 
  //     );
}
