import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripwire/Util/Quick.dart';
import 'package:tripwire/register.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            loginSection(),
            registerButton(),
          ],
        ),
      ),
    );
  }

  Widget loginSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Color(0xff669260),
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20
        ),
        Container(
          width: Quick.getDeviceSize(context).width * 0.8,
          decoration: BoxDecoration(
            color: Color(0xffA3D89F),
            borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  color: Colors.grey.withOpacity(0.3),
                )
              ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:EdgeInsets.fromLTRB(10,0,10,0),
                labelText: 'EMAIL',
              border: InputBorder.none,
              focusColor: Colors.red,
              labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          width: Quick.getDeviceSize(context).width * 0.8,
          decoration: BoxDecoration(
            color: Color(0xffA3D89F),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 5),
                color: Colors.grey.withOpacity(0.3),
              )
            ]
          ),

          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding:EdgeInsets.fromLTRB(10,0,10,0),
              labelText: 'PASSWORD',
              border: InputBorder.none,
              focusColor: Colors.red,
              labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
            height: 24
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffD5F5D1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.grey.withOpacity(0.3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "LET'S GO",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xff669260),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget registerButton() {
    return Positioned(
      bottom: 35,
      child: InkWell(
        onTap: (){
          Quick.navigate(context, () => Register());
        },
        child: Text(
          "REGISTER >",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color(0xff90C78A),
          ),
        ),
      ),
    );
  }
}
