import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:80,left:18,right: 18),
            child: Column(
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height:25.h),
                Image.asset('images/Forgot password.png'),
                SizedBox(height: 15.h),
                Text(
                  'Please enter your email address to recieve a verification code.',
                  style: TextStyle(fontSize:17.sp, fontWeight: FontWeight.w500,color: Colors.black54),
                ),
                SizedBox(height: 20.h),
                TextField(
                  decoration: InputDecoration(

                    labelText: 'Email or phone',
                    hintText: 'Enter your email or phone',
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  'Try another way',
                  style: TextStyle(fontSize: 20.sp,color: Colors.red
                  ,decoration: TextDecoration.underline
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(decoration: BoxDecoration(color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),width:MediaQuery.of(context).size.width*60,height:40.h,
                    child:TextButton(child:Text("continue",style: TextStyle(color: Colors.white,fontSize: 20)),
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
