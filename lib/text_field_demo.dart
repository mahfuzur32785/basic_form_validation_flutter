import 'package:flutter/material.dart';
import 'package:login_page/coustom_text_feild.dart';

class TextFeildDemo extends StatefulWidget {
  const TextFeildDemo({Key? key, this.emailfrom, this.passwordfrom})
      : super(key: key);

  final String? emailfrom;
  final String? passwordfrom;

  @override
  State<TextFeildDemo> createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String? email;
  TextEditingController? _emailcontroller = TextEditingController();
  TextEditingController? _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextFeild"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*TextFormField(
                controller: _emailcontroller,
                validator: (value) {
                  if(value!.isEmpty){
                    return('Enter your email');
                  }
                  if(!value.contains('@')){
                    return('Enter a valid email');
                  }
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter your email",
                  label: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red, width: 1, style: BorderStyle.solid),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red, width: 1, style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red, width: 1, style: BorderStyle.solid),
                  ),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.arrow_forward),
                ),
              ),*/

              /*+++++++++++++++++++++++++++++++++++++++++++++++*/


              /*CoustomTextFormFeild(
                controller: _emailcontroller,
                labelText: 'Email',
                hintText: 'Email your email',
                prefixIcon: Icons.email,
                validator: (email) {
                  if (email!.isEmpty) {
                    return ('Enter your email');
                  }
                  if (!email.contains('@')) {
                    return ('Enter a valid email');
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              CoustomTextFormFeild(
                controller: _passwordcontroller,
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off_outlined,
                validator: (password) {
                  if (password!.isEmpty) {
                    return ('Enter your password');
                  }
                  if (password.toString().length > 10) {
                    return ('Password is too long');
                  }
                  if (password.toString().length < 4) {
                    return ('Password is too short');
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_formkey.currentState!.validate()) {
                      email = _emailcontroller?.text;
                    } else {
                      print('Invalided email');
                    }
                  });
                },
                child: Text('Click'),
              ),
              SizedBox(
                height: 20,
              ),*/
              //Text('${email}'),
              SizedBox(height: 50,),
              Text(
                'Log in email is: '+widget.emailfrom.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                  'Log in password is: '+widget.passwordfrom.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
