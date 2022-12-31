import 'package:flutter/material.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/home_page.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/login_Page.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/forgot_pwd_page.dart';
//import 'package:flutter_design_ui_02/views_007_HomeWork/home_page_after_login.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/change_New_pwd.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/change_new_pwd_ok.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/register_page.dart';
import 'package:flutter_design_ui_02/views_007_HomeWork/register_verification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          appBarTheme: const AppBarTheme(
            elevation: 0,
          )
      ),
      //home: Home_Page(),
      //home: Login_Page(),
      //home: Register_Page(),
      //home: Forgot_PWD_Page(),
      //---Start onGenerateRoute ----------
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => Home_Page(),
          );
        }else if (settings.name == '/Login_Page') {
          return MaterialPageRoute(
            builder: (context) => Login_Page(),
          );
        }
        /*
        else if (settings.name == '/Home_Page_After_Login') {
          return MaterialPageRoute(
            builder: (context) => Home_Page_After_Login(),
          );
        }*/
        else if (settings.name == '/Forgot_PWD_Page') {
          return MaterialPageRoute(
            builder: (context) => Forgot_PWD_Page(),
          );
        }else if (settings.name == '/Change_New_PWD') {
          return MaterialPageRoute(
            builder: (context) => Change_New_PWD(),
          );
        }else if (settings.name == '/Change_New_PWD_OK') {
          return MaterialPageRoute(
            builder: (context) => Change_New_PWD_OK(),
          );
        }else if (settings.name == '/Register_Page') {
          return MaterialPageRoute(
            builder: (context) => Register_Page(),
          );
        }else if (settings.name == '/Register_Verification') {
          return MaterialPageRoute(
            builder: (context) => Register_Verification(),
          );
        }


        /*
        //Call with a
        else if (settings.name == '/product_detail') {
          final args = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: args,
            ),
          );
        }
        */
        return null;
      },
      //---End onGenerateRoute ----------

    );
  }
}

