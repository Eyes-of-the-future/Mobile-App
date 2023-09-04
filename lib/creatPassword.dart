import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class create extends StatefulWidget {
  const create({Key? key}) : super(key: key);

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      body:SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:80,left:18,right: 18),
            child: Column(
              children: [

                Text(
                  'Create new password',
                  style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height:25.h),
                Image.asset('images/Create new password.png'),
                SizedBox(height: 15.h),
                Text(
                  'Your new password must be different from previously used password.',
                  style: TextStyle(fontSize:17.sp, fontWeight: FontWeight.w500,color: Colors.black54),
                ),
                SizedBox(height: 20.h),
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
