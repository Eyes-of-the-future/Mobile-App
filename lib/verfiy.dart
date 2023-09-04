import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class verfiy extends StatelessWidget {
  const verfiy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:80,left:18,right: 18),
            child: Column(
              children: [
                Text(
                  'Verify your email',
                  style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height:25.h),
                Image.asset('images/Verify your email.png'),
                SizedBox(height:25.h),
                Text(
                  'Please enter your the 4 digit code sent to jo******@gmail.com ',
                  style: TextStyle(fontSize:19.sp, fontWeight: FontWeight.w500,color: Colors.black54),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i =1; i < 5; i++)
                      Column(
                        children: [

                          SizedBox(height: 8),
                          Text(
                            i.toString(),
                            style: TextStyle(
                              fontSize:22
                            ),
                          ),SizedBox(height: 8),
                          Container(
                            width: 40,
                            height: 2,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                  ],
                ),

                SizedBox(height:60.h),
                Text(
                  'Resend code',
                  style: TextStyle(fontSize: 20.sp,color: Colors.red
                      ,decoration: TextDecoration.underline
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(decoration: BoxDecoration(color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),width:MediaQuery.of(context).size.width*60,height:40.h,
                    child:TextButton(child:Text("verfiy",style: TextStyle(color: Colors.white,fontSize: 20)),
                        onPressed:(){
                          //Navigator.push(context,
                          //MaterialPageRoute(builder: (context) =>HomeScreen()));
                        }),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
