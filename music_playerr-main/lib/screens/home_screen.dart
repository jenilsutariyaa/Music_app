import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:music_player/screens/music_show.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  var singerImage=['assets/images/darshan.jpg','assets/images/a.jpg','assets/images/n.jpg'];
  var songalbumsimage=['assets/images/star.jpg','assets/images/truelove.jpg','assets/images/hustel.jpg','assets/images/beleive.jpg'];
  var songsalbumsname=['starboy','true love','hustel','belive'];
  var sonngalbumstitle=['music','music','music','muisc'];

  var recommentplaylistimage=['assets/images/devadeva.jpg','assets/images/khawb.jpg','assets/images/kesariya.jpg','assets/images/ilahi.jpg'];
  var recommentplaylistname=['deva deva','khawb','kesariya','ilahi'];
  var recommentplaylisttitle=['music','music','music','music'];

  var artistimage=['assets/images/darshan.jpg','assets/images/a.jpg','assets/images/n.jpg','assets/images/yoyo.jpg'];
  var artistname=['darshan raval','arjit singhvar','neha kakar','yo yo honey singh'];
  var artisttitle=['music','music','music','music'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _currentIndex==0?Text(
          "Discover",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 27,
          ),
        ):Text(
          "Library",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 27,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade200,
                Colors.blue.shade200,
              ],
            ),
          ),
        ),
        actions: [
          _currentIndex==0? Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 26,
          ):Icon(Icons.notifications_active,color: CupertinoColors.white,size: 26,),
          SizedBox(
            width: 19,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade200,
              Colors.purple.shade600,
              Colors.grey.shade800,
            ],
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          selectedLabelStyle: TextStyle(color: Colors.white),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.grey.shade800,
              icon: Column(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Discover",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.library_books),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Library",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/n.jpg'),
                backgroundColor: Colors.grey,
                radius: 25,
              ),
              label: 'Circle',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Store",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade200,
                        Colors.purple.shade600,
                        Colors.grey.shade800,
                      ], // Adjust colors as needed
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.07,
                        child: ContainedTabBarView(
                          tabs: [
                            Text('Film Score'),
                            Text('Musical Theatre'),
                            Text('Video Game'),
                          ],
                          views: [
                            PageView.builder(itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                    height: 80,
                                    width: 1,
                                    child: Text('')
                                ),
                              );
                            },),
                            Center(child: Text('')),
                            Center(child: Text('')),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height*(0.2+0.03),
                          child: PageView.builder(itemCount: singerImage.length,itemBuilder: (context, index) {
                            return Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(fit: BoxFit.cover,image: AssetImage(singerImage[index])),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height*(0.2+0.03),
                            );
                          },),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13,right: 13),
                        width: MediaQuery.of(context).size.width*1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("|",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.yellowAccent,
                                  fontWeight: FontWeight.bold
                                ),),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("New Albums",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,)

                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                         height: MediaQuery.of(context).size.height*(0.2+0.01),
                        child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: songsalbumsname.length,itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Music_screen(image: songalbumsimage[index],name: songsalbumsname[index],titie: sonngalbumstitle[index],),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 8),
                              child: Container(
                                width: 140,
                                height: MediaQuery.of(context).size.height*0.2,
                                child: Column(
                                  children: [
                                    Container(
                                      height:110,
                                      decoration:  BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(image: AssetImage(songalbumsimage[index]),fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(songsalbumsname[index],style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(sonngalbumstitle[index],style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          color: Colors.grey.shade100
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                      ),
                      SizedBox(height: 1,),
                      Container(
                        padding: EdgeInsets.only(left: 13,right: 13),
                        width: MediaQuery.of(context).size.width*1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("|",style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold
                                ),),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Recommend playlist",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              ],
                            ),


                            Icon(Icons.arrow_forward_ios,color: Colors.white,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.1,
                        child: ListView.builder(itemCount: 4,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: ListTile(
                              leading: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(fit: BoxFit.cover,image: AssetImage(recommentplaylistimage[index]))
                                ),
                              ),
                              title: Text(recommentplaylistname[index],style: TextStyle(
                                color: Colors.white
                              ),),
                              subtitle: Text(recommentplaylisttitle[index],style: TextStyle(
                                color: Colors.grey
                              ),),

                            ),
                          );
                        },),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height*0.1,
                        child: ListView.builder(itemCount: 4,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: ListTile(
                              leading: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(fit: BoxFit.cover,image: AssetImage(recommentplaylistimage[index]))
                                ),
                              ),
                              title: Text(recommentplaylistname[index],style: TextStyle(
                                  color: Colors.white
                              ),),
                              subtitle: Text(recommentplaylisttitle[index],style: TextStyle(
                                  color: Colors.grey
                              ),),

                            ),
                          );
                        },),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Add more screens for other BottomNavigationBarItem indices
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade200,
                        Colors.purple.shade600,
                        Colors.grey.shade800,
                      ], // Adjust colors as needed
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height*(0.1+0.05),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/images/mm.png'),fit: BoxFit.cover)
                                        ),
                                        width: double.infinity,
                                        height: 24,
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15,bottom: 15),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(CupertinoIcons.play_circle_fill,size: 43,),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text('Slacker Radio',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19
                                                ),),
                                              ],
                                            ),


                                            Padding(
                                              padding: const EdgeInsets.only(right: 28),
                                              child: Icon(CupertinoIcons.music_note_list),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(CupertinoIcons.folder,size: 45,color: Colors.white,),
                                  Text('Local',style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(CupertinoIcons.clock,size: 45,color: Colors.white,),
                                  Text('Recent',style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(CupertinoIcons.wifi_slash,size: 45,color: Colors.white,),
                                  Text('offline',style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.only(left: 13,right: 13),
                            width: MediaQuery.of(context).size.width*1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("|",style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Favourite Albums",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),),
                                  ],
                                ),

                                Icon(Icons.arrow_forward_ios,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*(0.2+0.01),
                          child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: songalbumsimage.length,itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15,right: 8),
                              child: Container(
                                width: 140,
                                height: MediaQuery.of(context).size.height*0.2,
                                child: Column(
                                  children: [
                                    Container(
                                      height:110,
                                      decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          image: DecorationImage(image: AssetImage(songalbumsimage[index]),fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(songsalbumsname[index],style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(sonngalbumstitle[index],style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.grey.shade100
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.only(left: 13,right: 13),
                            width: MediaQuery.of(context).size.width*1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("|",style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Collection of Artist",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),),
                                  ],
                                ),

                                Icon(Icons.arrow_forward_ios,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*(0.2+0.01),
                          child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: artisttitle.length,itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15,right: 8),
                              child: Container(
                                width: 140,
                                height: MediaQuery.of(context).size.height*0.2,
                                child: Column(
                                  children: [
                                    Container(
                                      height:110,
                                      decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          image: DecorationImage(image: AssetImage(artistimage[index]),fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(artistname[index],style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(artisttitle[index],style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.grey.shade100
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
            Placeholder(),
            Placeholder(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}


