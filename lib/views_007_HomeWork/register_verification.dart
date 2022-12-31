import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Register_Verification extends StatefulWidget {
  const Register_Verification({Key? key}) : super (key: key);

  @override
  State<Register_Verification> createState() => _Register_Verification();
}

class _Register_Verification extends State<Register_Verification> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('CODE VERIFICATION'),
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
                  'Code',
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
                  'Verification',
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumTextBox(),
                NumTextBox(),
                NumTextBox(),
                NumTextBox(),
              ],
            ),
          ),

          const SizedBox(height: 10),

          //const Divider(),
          const SizedBox(height: 10),



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
                        '/Login_Page'
                    );
                  });
                },
                child: Text('Verification'),
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
                  "Didn't receive the code? ",
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
                    /*
                    Navigator.pushNamed(
                        context,
                        '/Login_Page'
                    );
                     */
                  }, // Image tapped
                  child: Text(
                    "Re-Send (32)",
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

class NumTextBox extends StatelessWidget {
  const NumTextBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 80,
        child: AspectRatio(
          aspectRatio: 0.8,
            child: TextField(
              //controller: _usernameController,
              keyboardType: TextInputType.text,
              obscureText:false,
              maxLength: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                border: InputBorder.none,
                //labelText: 'User name',
                hintText: "0",
                hintStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.grey
                ),
                //prefixIcon: Icon(Icons.person),
                //suffixIcon: Icon(Icons.email),
                //filled: true,
                filled: true,
                fillColor: Colors.indigo[50],
                counterText: '',
              ),
              onChanged: (value) {
                //setState(() {
                  //_username = value;
                //});
              },
            ),
        ),
      ),
    );
  }
}
