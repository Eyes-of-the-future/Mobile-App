import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool _isObsecured = true;
  bool _isObsecuredConfirm = true;
  void _toggleObscured(){
    setState(() {
      _isObsecured=! _isObsecured ;
    });}
  void _toggleObscuredConfrm(){
    setState(() {
      _isObsecuredConfirm =! _isObsecuredConfirm ;
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:80,left:18,right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign up',
                  style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height:10.h),
                Text(
                  'Stay connected to the latest happenings in your professional realm',
                  style: TextStyle(fontSize:17.sp, fontWeight: FontWeight.w500,color: Colors.black54),
                ),
                SizedBox(height: 20.h),
                Image.asset('images/Sign up.png'), // Replace with your image path
                SizedBox(height: 20.h),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(

                          labelText: 'First name',
                          hintText: 'Enter your email or phone',
                        ),
                      ),
                    ),
                 SizedBox(width:20,)
                    ,Expanded(
                      child: TextField(
                        decoration: InputDecoration(

                          labelText: 'Second name',
                          hintText: 'Enter your email or phone',
                        ),
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(

                    labelText: 'Email or phone',
                    hintText: 'Enter your email or phone',
                  ),
                ),
                TextField(
                  obscureText: _isObsecured,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon:  IconButton(onPressed:_toggleObscured,
                        icon: Icon(_isObsecured?Icons.visibility:Icons.visibility_off
                          ,color: Theme.of(context).primaryColor,)),
                  ),
                ),
                TextField(
                  obscureText: _isObsecuredConfirm,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Password ,please',
                    suffixIcon:  IconButton(onPressed:_toggleObscuredConfrm,
                        icon: Icon(_isObsecuredConfirm?Icons.visibility:Icons.visibility_off
                          ,color: Theme.of(context).primaryColor,)),
                  ),
                ),

                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(decoration: BoxDecoration(color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),width:MediaQuery.of(context).size.width*60,height:40.h,
                    child:TextButton(child:Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 20)),
                        onPressed:(){
                          //Navigator.push(context,
                          //MaterialPageRoute(builder: (context) =>HomeScreen()));
                        }),),
                ),
                SizedBox(height: 20.h),
                Text("________________ or ________________",style: TextStyle(fontSize:20.sp)),
                SizedBox(height: 20.h)
                , Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration:BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(12)),
                        width:45.w,
                        height: 45.h,
                        child:Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.network("https://th.bing.com/th/id/R.0fa3fe04edf6c0202970f2088edea9e7?rik=joOK76LOMJlBPw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fgoogle-logo-png-open-2000.png&ehk=0PJJlqaIxYmJ9eOIp9mYVPA4KwkGo5Zob552JPltDMw%3d&risl=&pid=ImgRaw&r=0"),
                        )),
                    SizedBox(width: 20.w), Container(
                        decoration:BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(12)),
                        width:45.w,
                        height: 45.h,
                        child:Image.network("https://th.bing.com/th/id/R.8ef8e7517ce4e8ba5c30c0e649892441?rik=zPhFeozXzx2JnA&riu=http%3a%2f%2fclipart-library.com%2fimages_k%2fapple-logo-with-transparent-background%2fapple-logo-with-transparent-background-6.png&ehk=fSbG5Or%2fxBZKjc1PjZHudjEHxY17Oi%2foigXAWBgAvo0%3d&risl=&pid=ImgRaw&r=0")),
                    SizedBox(width: 20.w), Container(
                        decoration:BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(12)),
                        width:45.w,
                        height: 45.h,
                        child:Image.network("https://1000logos.net/wp-content/uploads/2016/11/Facebook-logo.png")),
                  ],
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(bottom:40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',style: TextStyle(color: Colors.black,fontSize:15.sp)),

                      Text(' Sign in',style: TextStyle(color:Theme.of(context).primaryColor,fontSize:15.sp)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
