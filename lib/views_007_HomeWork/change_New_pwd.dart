import 'package:flutter/material.dart';
class Change_New_PWD extends StatefulWidget {
  const Change_New_PWD({Key? key}) : super (key: key);

  @override
  State<Change_New_PWD> createState() => _Change_New_PWD();
}

class _Change_New_PWD extends State<Change_New_PWD> {

  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPasswordController2 = TextEditingController();
  bool _passwordVisible = false;
  bool _passwordVisible2 = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('NEW PASSWORD'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Change',
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'New Password',
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
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'NEW PASSWORD',
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
              //controller: _usernameController,
              keyboardType: TextInputType.text,
              controller: _userPasswordController,
              obscureText: !_passwordVisible,//This will obscure text dynamicall
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                border: InputBorder.none,
                //labelText: 'User name',
                hintText: "Enter your Password",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                //filled: true,
                filled: false,
                fillColor: Colors.indigo[50],
                //counterText: '0/10',

              ),
              onChanged: (value) {
                setState(() {
                  //_username = value;
                });
              },
            ),
          ),
          const Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'NEW PASSWORD',
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
              controller: _userPasswordController2,
              obscureText: !_passwordVisible2,//
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                border: InputBorder.none,
                //labelText: 'Password',
                hintText: "Enter your Password",
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.lock),
                //suffixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible2
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible2 = !_passwordVisible2;
                    });
                  },
                ),
                filled: true,
                //fillColor: Colors.indigo[50],
                fillColor: Colors.white,
                /*
                counterText: 'Forget Password?',
                counterStyle:TextStyle(
                  //decoration: TextDecoration.underline,
                  fontSize: 15.0,
                  color: Colors.black,
                ),

                 */
              ),
            ),
          ),
          const Divider(),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your New Passwork Must the Same.",
                  style: TextStyle(
                    fontSize: 10,
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
            padding: EdgeInsets.all(10),
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
                        '/Change_New_PWD_OK'
                    );
                  });
                },
                child: Text('Change Password'),
              ),
            ),
          ),



        ],
      ),
      backgroundColor: Colors.white,

    );
  }
}