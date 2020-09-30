import 'package:flutter/material.dart';
import 'HomePage.dart';
class CheckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir'
      ),
      home: checkList(),
    );
  }
}
class checkList extends StatefulWidget {
  @override
  _checkListState createState() => _checkListState();
}

class _checkListState extends State<checkList> {
  bool checked = false;
  List<int> selectedList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff96060),
        elevation: 0,
        title: Text("New CheckList", style: TextStyle(
            fontSize: 25
        ),),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 30,
              color: Color(0xfff96060),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Title", style: TextStyle(
                                fontSize: 18
                            ),),
                            SizedBox(height: 10,),
                            Text("Lorem ipsum sits amet", style: TextStyle(
                                fontSize: 18
                            ),),

                            SizedBox(height: 20,),
                            CheckboxListTile(
                              title: Text("List item 1",),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value){
                                setState(() {
                                  if(value){
                                    selectedList.add(1);
                                  }else{
                                    selectedList.remove(1);
                                  }
                                });
                              },
                              value:selectedList.contains(1),
                            ),
                            CheckboxListTile(
                              title: Text("List item 2",),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value){
                                setState(() {
                                  if(value){
                                    selectedList.add(2);
                                  }else{
                                    selectedList.remove(2);
                                  }
                                });
                              },
                              value:selectedList.contains(2),
                            ),
                            CheckboxListTile(
                              title: Text("List item 3",),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value){
                                setState(() {
                                  if(value){
                                    selectedList.add(3);
                                  }else{
                                    selectedList.remove(3);
                                  }
                                });
                              },
                              value:selectedList.contains(3),
                            ),
                            Text("Color", style: TextStyle(
                                fontSize: 18
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.pink
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.blue
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.green
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xfff4ca8f)
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xff3d3a62)
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 40,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Color(0xffff96060)
                              ),
                              child: Center(
                                child: Text("Add Checklist", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
