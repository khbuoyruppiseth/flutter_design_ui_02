import 'package:flutter/material.dart';
class Home_Page_After_Login extends StatefulWidget {
  const Home_Page_After_Login({Key? key,required this.username,required this.pwd}) : super (key: key);
  final String username;
  final String pwd;
  @override
  State<Home_Page_After_Login> createState() => _Home_Page_After_Login(username: username, pwd: pwd);
}

class _Home_Page_After_Login extends State<Home_Page_After_Login> {
  late String username;
  late String pwd;
  _Home_Page_After_Login({Key? key,required this.username,required this.pwd});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('HOME'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Home Page',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "username:$username",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password:$pwd",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}