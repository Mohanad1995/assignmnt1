
import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  String lable;
  String value;
  Icon iconData;
  Function fun;
  ProfilWidget({@required this.lable,@required this.value,this.iconData,this.fun});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        fun(value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
        child:iconData == null ?  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(this.lable,style: TextStyle(fontSize: 16),),
            SizedBox(height: 6,),
            Text(value,style: TextStyle(
              fontSize: 22,
              color: Colors.blue,
              //    fontWeight: FontWeight.w400,
            ),)
          ],
        ):Row(
           children: [
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(this.lable,style: TextStyle(fontSize: 16),),
                   SizedBox(height: 6,),
                   Text(value,style: TextStyle(
                     fontSize: 22,
                     color: Colors.blue,
                     //    fontWeight: FontWeight.w400,
                   ),)
                 ],
               ),
             ),
           IconButton(icon:iconData, onPressed: null)  ,
           ],
        ),
      ),
    );
  }
}
