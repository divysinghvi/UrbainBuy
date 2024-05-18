import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const customBackground(),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _logo(context),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        _header(context),
                        const SizedBox(height: 10),
                        _inputField(context),
                        _signup(context),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header(context) {
    return Container(
      padding: const EdgeInsets.only(right: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: GoogleFonts.robotoFlex(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Please log in to access your account',
            style: GoogleFonts.robotoFlex(
              fontSize: 16,
              color: const Color.fromARGB(255, 61, 57, 57),
            ),
          )
        ],
      ),
    );
  }

  Widget _logo(context) {
    return Column(
      children: [
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/44/44338.png',
          height: 58,
          width: 200,
        ),
      ],
    );
  }

  Widget _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
          child: Text(
            "Email",
            style: GoogleFonts.robotoFlex(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email address",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.mail_outline_outlined),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
          child: Text(
            "Password",
            style: GoogleFonts.robotoFlex(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 29, 29),
              ),
            ),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock_outline),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          obscureText: true,
        ),
        _forgotPassword(context),
        _loginbtn(context),
        const SizedBox(
          height: 10,
        ),
        _or(context),
        const SizedBox(
          height: 10,
        ),
        _loginLinkedin(context),
        const SizedBox(
          height: 19,
        )
      ],
    );
  }

  Widget _forgotPassword(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot password?",
            style: TextStyle(color: Color.fromARGB(255, 28, 29, 29)),
          ),
        ),
      ],
    );
  }

  Widget _loginbtn(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        backgroundColor: Color.fromARGB(255, 28, 29, 29),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _loginLinkedin(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Color.fromARGB(255, 28, 29, 29),
          width: 2,
        ),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(NetworkImage(
              "https://cdn-icons-png.flaticon.com/512/104/104093.png")),
          SizedBox(width: 12),
          Text(
            "Login with google",
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 28, 29, 29),
            ),
          ),
        ],
      ),
    );
  }

  Widget _or(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            ' or ',
            style: GoogleFonts.robotoFlex(
              fontSize: 12,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: GoogleFonts.robotoFlex(
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: GoogleFonts.robotoFlex(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 28, 29, 29),
            ),
          ),
        )
      ],
    );
  }
}

class customBackground extends StatelessWidget {
  const customBackground({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Color.fromARGB(255, 37, 39, 37),
                height: 130,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10.0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
