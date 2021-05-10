import 'package:flutter/material.dart';
import 'package:shcool_system/sidebar/sidebar_layout.dart';

class LogOut extends StatefulWidget {
  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  bool _isHidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[500],
      body: Center(
        child: Container(
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //   image: NetworkImage(
          //       'https://media.istockphoto.com/photos/blank-red-book-picture-id535570181?k=6&m=535570181&s=612x612&w=0&h=cO_ACB1Vm072_5EGY4MXCpCnEZqo2Ll1axO7QIoAe7c='),
          //   fit: BoxFit.cover,
          //   colorFilter: new ColorFilter.mode(
          //       Colors.black.withOpacity(0.8), BlendMode.dst),
          // )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/download.png',
                ),
                radius: 70,
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Royal University of Phnom Penh',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  initialValue: 'programmer@gmail.com',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xFF262AAA),
                    ),
                    labelText: 'Email',
                    fillColor: Colors.blueAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 2, 12, 0),
                child: TextFormField(
                  initialValue: 'password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  obscureText: _isHidePassword,
                  decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF262AAA),
                    ),
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        _isHidePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Color(0xFF262AAA),
                      ),
                    ),
                    labelText: 'Password',
                    fillColor: Colors.blueAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(260, 0, 0, 0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF262AAA),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SideBarLayout()),
                      );
                    },
                    child: Center(
                      child: Text('Submit'),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(child: Text('Register')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }
}
