import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
bool isSwitched= false;
bool isCheckd=false;
String appThim='Light Mode';
class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.white70,
          title: Text('Profile Settings',
            style: TextStyle(fontWeight: .bold,fontSize: 25),
          ),centerTitle: true,
          leading:Icon(Icons.arrow_back,color: Colors.pink,) ,
          actions: [
            Icon(Icons.more_vert,color: Colors.pink,)
          ],
        ),
        body:SingleChildScrollView(child:  Center(
          child: Column(
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: 50,),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT_HyrCteDhaHrkz-FYnqn6L3Cy8ldfkXKgPGBtWdTMQ&s=10'
                ),
              ),
              SizedBox( height: 15,),
              Text('Alexa johnson',style: TextStyle(fontSize: 20,
                  fontWeight: .bold,color: Colors.black54),),
              SizedBox(height: 4,),
              Text('alexa.johnson@exampl.com',style: TextStyle(fontSize: 14,
                  color: Colors.grey),),
              SizedBox(height: 28,),
              Align(alignment: .centerStart,child:Text('INTERESTS',style: TextStyle(color: Colors.blueGrey,
                  fontSize: 18,fontWeight: .bold),) ,),
              SizedBox(height: 10,),
              Align(alignment: .centerStart,child:Wrap(
                spacing: 5,runSpacing: 8,
                children: [
                  Container( width: 90,height: 40,
                    alignment: .center,
                    decoration: BoxDecoration(color: Color(0xffF48FB1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('UX Desing',style: TextStyle(fontSize: 14,
                        fontWeight: .bold,color: Colors.black45),),
                  ),
                  //SizedBox(width: 7,),
                  Container( width: 100,height: 40,
                    alignment: .center,
                    decoration: BoxDecoration(color: Color(0xffF48FB1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('photography',style: TextStyle(fontSize: 14,
                        fontWeight: .bold,color: Colors.black45),),
                  ),
                  //SizedBox(width: 7,),
                  Container( width: 90,height: 40,
                    alignment: .center,
                    decoration: BoxDecoration(color: Color(0xffF48FB1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Travel',style: TextStyle(fontSize: 14,
                        fontWeight: .bold,color: Colors.black45),),
                  ),
                  // SizedBox(width: 7,),
                  Container( width: 90,height: 40,
                    alignment: .center,
                    decoration: BoxDecoration(color: Color(0xffF48FB1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Fitness',style: TextStyle(fontSize: 14,
                        fontWeight: .bold,color: Colors.black45),),
                  ),
                  // SizedBox(width: 7,),
                  Container( width: 90,height: 40,
                    alignment: .center,
                    decoration: BoxDecoration(color: Color(0xffF48FB1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Music',style: TextStyle(fontSize: 14,
                        fontWeight: .bold,color: Colors.black45),),
                  ),
                ],
              )
              ),
              SizedBox(height: 10,),
              Align(alignment: .centerStart,child:Text('SETTINGS',
                style: TextStyle(color: Colors.blueGrey,
                  fontSize: 18,fontWeight: .bold),) ,),
              SizedBox(height: 10,),
              Container(margin: EdgeInsets.only(left: 20,right: 20),
                 height: 200, width: 300,decoration: BoxDecoration(
                  color: Colors.white70,borderRadius: .circular(25)
              )
                  ,child: Column(
                    children: [
                      SwitchListTile(value: isSwitched, onChanged: (value) {
                        setState(() {
                          isSwitched=value;
                        });
                      },secondary: Icon(Icons.notifications,
                        color: Color(0xffF48FB1),), activeColor: Color(0xffF48FB1),
                        title: Text('Enabel Notifications',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: .bold),),),
                      CheckboxListTile(value: isCheckd, onChanged: (value) {
                        setState(() {
                          isCheckd=value!;
                        });
                      },title: Text('Subscribe to Newsletter',
                        style:TextStyle(fontWeight: .bold,fontSize: 14,color: Colors.grey) ,),
                        secondary: Icon(Icons.message,
                          color: Color(0xffF48FB1),),activeColor: Color(0xffF48FB1),),

                      ListTile(
                        leading: Icon(Icons.color_lens,color: Color(0xffF48FB1),),
                        title: Text('App theme',
                          style: TextStyle(fontSize: 14,fontWeight: .bold,color: Colors.grey),),),
                      RadioGroup<String>(
                          groupValue:appThim,
                          onChanged: (value) { setState(() {
                            appThim=value!;
                          });}, child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Radio<String>
                            (value: 'Light Mode',activeColor: Color(0xffF48FB1),),
                            Text('Light Mode',style: TextStyle(color: Colors.grey,fontSize: 12)),
                            SizedBox(width: 10,),
                           Radio<String>
                            (value: 'Dark Mode',activeColor: Color(0xffF48FB1),),
                            Text('Dark Mode' ,style: TextStyle(color: Colors.grey,fontSize: 12),),
                               

                        ],
                      )),

                    ],
                  )

              ),SizedBox(height: 25,),
              ElevatedButton.icon(onPressed: (){}

                , label:  Text('Save Changes',
                style: TextStyle(fontWeight: .bold,fontSize: 17,color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF48FB1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)))
                ,icon: Icon(Icons.check_circle_outline,color: Colors.white,),)


            ],
          ),
        ),)



      ),

    );
  }
}
