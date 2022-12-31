import 'package:flutter/material.dart';
class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super (key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('REGISTER'),
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
                  'Register',
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
                  'New account',
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
          const SizedBox(height: 70),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'FULL NAME',
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
            child:
            TextField(
              //controller: _pwdController,
              keyboardType: TextInputType.text,
              obscureText:false,
              decoration: InputDecoration(
                border: InputBorder.none,
                //labelText: 'Password',
                hintText: "Enter your FULL NAME",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.newspaper),
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
          const SizedBox(height: 15),
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
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:
            TextField(
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
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'PHONE',
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
            child:
            TextField(
              //controller: _pwdController,
              keyboardType: TextInputType.text,
              obscureText:false,
              decoration: InputDecoration(
                border: InputBorder.none,
                //labelText: 'Password',
                hintText: "Enter your PHONE",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.phone),
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
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'PASSWORD',
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
            child:
            TextField(
              //controller: _pwdController,
              keyboardType: TextInputType.text,
              obscureText:true,
              decoration: InputDecoration(
                border: InputBorder.none,
                //labelText: 'Password',
                hintText: "Enter your Password",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.lock),
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
                        '/Register_Verification'
                    );
                  });
                },
                child: Text('Register'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            color: Colors.white,
            child:
            SizedBox(
                width: double.infinity, // <-- match_parent
                height: 50, // <-- match-parent
                child: ElevatedButton.icon(
                  onPressed: (){
                    //print("You pressed Icon Elevated Button");
                  },
                  icon: Icon(Icons.facebook),  //icon data for elevated button
                  label: Text("Sign up with Facebook"), //label text
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                )
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
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
                child:Text(
                  "Login",
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


        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}