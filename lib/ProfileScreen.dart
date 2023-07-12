

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  actions: [
                    Hero(tag: 'profileImg',
                    child: Container(
                      height: 650,
                      width: 300,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50), topRight: Radius.circular(50),topLeft: Radius.circular(50)),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/young-handsome-man-with-beard-wearing-casual-sweater-and-glasses-over-picture-id1212960962?k=20&m=1212960962&s=612x612&w=0&h=o2PGY4yhn51XSnYi60dMCQqvXQ0d-odkaKUVocbYYLk='
                              )
                          )
                      ),
                    )),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("GetBack"))
                  ],
            )
                );
          },
          child: Hero(
            tag: 'profileImg',
            child: Container(
              margin: EdgeInsets.all(30),
              height: 300,
              // width: double.maxFinite,
              decoration: const BoxDecoration(

                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50), topRight: Radius.circular(50),topLeft: Radius.circular(50)),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    'https://media.istockphoto.com/photos/young-handsome-man-with-beard-wearing-casual-sweater-and-glasses-over-picture-id1212960962?k=20&m=1212960962&s=612x612&w=0&h=o2PGY4yhn51XSnYi60dMCQqvXQ0d-odkaKUVocbYYLk='
                  )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
