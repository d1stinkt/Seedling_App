import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'service_locator.dart';
import 'package:seedling_app/Favorites.dart';
import 'package:seedling_app/Settings.dart';
import 'package:seedling_app/Plz_Help.dart';

class ProfileUI2 extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return Scaffold(

          body: SafeArea(
          child: Column(

            children: [

               Container(
                   color: Colors.orange[700],
                   child: Center(
                       child: Ink(
                           decoration: const ShapeDecoration(
                             color: Colors.cyan,
                             shape: CircleBorder(),
                           ),
                           child: IconButton(
                             icon: Icon(Icons.arrow_downward_rounded),
                             color: Colors.cyan[900],
                             onPressed: () {
                               Navigator.pop(context);
                             },
                           )
                       )
                   )
               ),




              Container(
                decoration: BoxDecoration( color: Colors.orange[700],
                    image: DecorationImage( colorFilter: ColorFilter.linearToSrgbGamma(),
                        image: NetworkImage(
                            "add you image URL here " // THE PROFILE PIC IF IMPLEMENTED NEEDS AN API TO FETCH IT FROM THE NET!!! I think...
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0,2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage
                            ("Add you profile DP image URL here "),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 60,
              ),
              Text(
                "Seeder"
                ,style: TextStyle(
                  fontSize: 25.0,
                  color:Colors.redAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Turku, Finland"
                ,style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.cyan[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Member since 26/03/2021"
                ,style: TextStyle(
                  fontSize: 15.0,
                  color:Colors.cyan[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),

                  elevation: 2.0,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                      child: Text("Edit",style: TextStyle(
                        color: Colors.cyan[900],
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w400
                      ),))
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Seeds",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                              ),),
                            SizedBox(
                              height: 7,
                            ),
                            Text("69",
                              style: TextStyle(
                                  color: Colors.cyan[900],
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300
                              ),)
                          ],
                        ),
                      ),
                      Expanded(
                        child:
                        Column(
                          children: [
                            Text("Stars",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                              ),),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Stars might be implemented",
                              style: TextStyle(
                                  color: Colors.cyan[900],
                                  fontSize: 12.5,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w300
                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: (){
                      print('nothing here');
                    },
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.orange[700],Colors.redAccent]
                        ),
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                        alignment: Alignment.center,
                        child: Text(
                          "Something",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){

                    },
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.redAccent,Colors.orange[700]]
                        ),
                        borderRadius: BorderRadius.circular(80.0),

                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                        alignment: Alignment.center,
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }


}

