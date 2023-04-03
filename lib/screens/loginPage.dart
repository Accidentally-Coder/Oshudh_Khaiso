import 'package:flutter/material.dart';
import 'package:oshudh_khaiso/components/my_buton.dart';
import 'package:oshudh_khaiso/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    print('Signed In');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                //Color(0xFFFCE4EC),
                                Color(0xFFF8BBD0),
                                Color(0xFFF48FB1),
                                //Color(0xFFF06292),
                                //Color(0xFFEC407A),
                                //Colors.pink,
                              ],
                          ),
                        ),
                        //color: Colors.pink[100],
                        height: 250,
                      ),
                    ),
                    Positioned(
                      left: 145,
                      top: 145,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient : LinearGradient(
                                colors: [
                                  //Color(0xFFFCE4EC),
                                  //Color(0xFFF8BBD0),
                                  Color(0xFFF06292),
                                  Color(0xFFEC407A),
                                  Colors.pink,
                                ]
                            ),
                            shape : BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.people_alt_sharp,
                          size:  70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 50.0,),
                      //email
                      MyTextField(
                          controller: emailController,
                          hintText: 'Email',
                          obscureText: false
                      ),

                      const SizedBox(height: 10.0,),

                      //password
                      MyTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true
                      ),

                      const SizedBox(height: 80.0,),

                      //signIn Button
                      MyButton(
                          buttonText: 'Sign In',
                          onTap: signUserIn,
                      ),

                      const SizedBox(height: 10.0,),

                      MyButton(
                        buttonText: 'Sign Up',
                        onTap: signUserIn,
                      ),
                    ],
                  ),
                ),

            ],
          ),
        ),
      )
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();

    path.lineTo(0, h*0.6);
    path.quadraticBezierTo(
      w*0.5,
      h,
      w,
      h*0.6,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    //throw UnimplementedError();
    return false;
  }

}