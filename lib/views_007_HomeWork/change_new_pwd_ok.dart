import 'package:flutter/material.dart';
class Change_New_PWD_OK extends StatefulWidget {
  const Change_New_PWD_OK({Key? key}) : super (key: key);

  @override
  State<Change_New_PWD_OK> createState() => _Change_New_PWD_OK();
}

class _Change_New_PWD_OK extends State<Change_New_PWD_OK> {

  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPasswordController2 = TextEditingController();
  bool _passwordVisible = false;
  bool _passwordVisible2 = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('PASSWORD CHANGED'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //const SizedBox(height: 20),
        Column(

        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Password',
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
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Changed',
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
          //const SizedBox(height: 70),
          Container(
            padding: EdgeInsets.all(40),
            child:Image.asset(
            'assets/img/PWD_OK.png',
            //width: 100,
            //height: 100,
            //color: Colors.amber,
          ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child:
            SizedBox(
              //width: double.infinity, // <-- match_parent
              width: 200, // <-- match_parent
              height: 50, // <-- match-parent

              child:ElevatedButton(
                onPressed: (){
                  setState(() {
                    //_username = _usernameController.text;
                    //_pwd = _pwdController.text;
                    Navigator.pushNamed(
                        context,
                        '/Login_Page'
                    );
                  });
                },
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
              ),
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,

    );
  }
}