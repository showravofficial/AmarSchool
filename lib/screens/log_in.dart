import 'package:amar_school/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController Mail = TextEditingController();

  final TextEditingController Pass = TextEditingController();

  String email = "amarschool@gmail.com";
  var password = "amarschool";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff00FFFF),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 10, right: 10, bottom: 10),
              child: Image.asset("assets/images/App_logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Mail,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  labelText: "Email address",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Pass,
                obscureText: true,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.security),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    print("Yes");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0000FF),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 1.50, 40)),
                        
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Forgotten Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Create new account",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
