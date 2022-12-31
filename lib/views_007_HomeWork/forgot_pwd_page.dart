import 'package:flutter/material.dart';
class Forgot_PWD_Page extends StatefulWidget {
  const Forgot_PWD_Page({Key? key}) : super (key: key);

  @override
  State<Forgot_PWD_Page> createState() => _Forgot_PWD_PageState();
}

class _Forgot_PWD_PageState extends State<Forgot_PWD_Page> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('FORGOT PASSWORD'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Forgot',
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
              children: const [
                Text(
                  'Password?',
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

          const SizedBox(height: 130),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:
            const TextField(
              //controller: _pwdController,
              keyboardType: TextInputType.text,
              obscureText:false,
              decoration: InputDecoration(
                border: InputBorder.none,
                //labelText: 'Password',
                hintText: "Enter your EMAIL",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.mail),
                filled: true,
                fillColor: Colors.white,
                //counterText: 'Forget Password?',
                counterStyle:TextStyle(
                  //decoration: TextDecoration.underline,
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Please provide your email to reset your password. please don't",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
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
              children: const [
                Text(
                  "share any data to other people",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:
            SizedBox(
              width: double.infinity, // <-- match_parent
              height: 50, // <-- match-parent
              child:ElevatedButton(
                onPressed: (){
                  setState(() {
                    //_username = _usernameController.text;
                    //_pwd = _pwdController.text;
                    Navigator.pushNamed(
                        context,
                        '/Change_New_PWD'
                    );
                  });
                },
                child: Text('Reset Password'),
              ),
            ),
          ),

          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember now? ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      '/Login_Page'
                  );
                }, // Image tapped
                child: Text(
                  "Login here",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              ],
            ),
          ),

          const SizedBox(height: 250),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [

                Text(
                  "Need help?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
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