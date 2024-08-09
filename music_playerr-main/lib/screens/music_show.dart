import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Music_screen extends StatefulWidget {
  var image;
  var name;
  var titie;
   Music_screen({super.key,required this.titie,required this.image,required this.name});

  @override
  State<Music_screen> createState() => _Music_screenState();
}

class _Music_screenState extends State<Music_screen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage('assets/images/a.jpg'),fit: BoxFit.cover)
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black87,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(focusColor: Colors.grey,onTap: (){
                        Navigator.pop(context);
                      },child: Icon(CupertinoIcons.back,color: Colors.white,)),
                      Icon(Icons.share,color: Colors.white,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*(0.1+0.06),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*(0.3+0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 13,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(widget.name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      color: Colors.white
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text(widget.titie,style: TextStyle(
                                  color: Colors.grey
                                )),
                                SizedBox(width: 5,),
                                Icon(CupertinoIcons.arrow_right,color: Colors.grey,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14,right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(CupertinoIcons.return_icon,color: Colors.white,size: 25,),
                    Icon(CupertinoIcons.heart,color: Colors.white,size: 25,),
                    Icon(CupertinoIcons.arrow_down_to_line_alt,color: Colors.white,size: 25,),
                    Icon(Icons.message,color: Colors.white,size: 25,)
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white)
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: ListView.builder(itemCount: 10,itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(index.toString(),style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),),
                  title: Text("music name",style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                  ),),
                  subtitle: Text('subtitle',style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),),
                  trailing: Icon(Icons.more_horiz,color: CupertinoColors.white,size: 28,),
                );
              },))
            ],
          ),

        ],
      )),
    );
  }
}
