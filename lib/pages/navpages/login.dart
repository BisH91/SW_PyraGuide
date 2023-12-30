import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Login",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 28,
            color: Color(0xffDAA520),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to the login page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Color(0xffDAA520),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: LoginContent(),
    );
  }
}

class LoginContent extends StatefulWidget {
  @override
  _LoginContentState createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 1),
          Text(
            "Get ready to start your adventure!",
            style: TextStyle(fontSize: 15, color: Colors.grey[700]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                inputFile(label: "Username"),
                // inputFile(label: "Email"),
                inputFile(label: "Password", obscureText: !_showPassword),
              ],
            ),
          ),
          SizedBox(height: 240),
          MaterialButton(
            minWidth: 260,
            height: 60,
            onPressed: () {
              // Add your signup logic here
            },
            color: Color(0xffDAA520),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90),
            ),
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  // Widget for text field
  Widget inputFile({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: TextFormField(
            obscureText: label == "Password" ? !_showPassword : obscureText,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
            ),
            decoration: InputDecoration(
              hintText: label,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              border: InputBorder.none,
              suffixIcon: label == "Password"
                  ? IconButton(
                      icon: _showPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
