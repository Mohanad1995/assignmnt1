import 'package:assigmnt/profilwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  nameFunction(String value){
    print('$value');
  }
  emailFunction(String value){
    print('$value');
  }
  mobilFunction(String value){
    print('$value');
  }
  birthFunction(String value){
    print('$value');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
          middle:Text('Edit Profile'),
        trailing: Text('Save',style: TextStyle(color: Colors.blue),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       // mainAxisAlignment: MainAxisAlignment.,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 52,bottom: 24),
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black12,Colors.white],
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          colorFilter:ColorFilter.mode(
                            Colors.black.withOpacity(0.2),
                            BlendMode.dstATop,
                          ),
                          image: AssetImage('assets/img/mohanad.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
           //    IconButton(icon: Icon(Icons.camera_alt), onPressed: null,iconSize: 50,),
              ],
            ),
          ),

          Divider(),
          ProfilWidget(lable:'Name',value:'Mohanad M. Alattar',fun: nameFunction,),
          Divider(),
          ProfilWidget(lable:'Email',value:'mohanad@gmail.com',
    iconData: Icon(Icons.email,color: Colors.blue,),fun:emailFunction,),
          Divider(),
          ProfilWidget(lable:'Mobile',value:'0592763434',fun: mobilFunction,),
          Divider(),
          ProfilWidget(lable:'Birthdate',value:'30-5-1995',
            iconData: Icon(Icons.calendar_today,color: Colors.blue,),fun: birthFunction,),
       ],
      ),
    );
  }

//  Widget profilWidget(String lable,String value) {
//    return   Padding(
//      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: [
//          Text(lable,style: TextStyle(fontSize: 16),),
//          SizedBox(height: 6,),
//          Text(value,style: TextStyle(
//            fontSize: 22,
//            color: Colors.blue,
//            //    fontWeight: FontWeight.w400,
//          ),)
//        ],
//      ),
//    );
//  }
}
