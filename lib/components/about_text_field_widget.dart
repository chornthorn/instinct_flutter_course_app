import 'package:flutter/material.dart';

class AboutTextFieldWidget extends StatefulWidget {
  AboutTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<AboutTextFieldWidget> createState() => _AboutTextFieldWidgetState();
}

class _AboutTextFieldWidgetState extends State<AboutTextFieldWidget> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  late final FocusNode _usernameFocusNode;
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  // close keyboard
  void _closeKeyboard() {
    _usernameFocusNode.unfocus();
    _passwordFocusNode.unfocus();
  }

  // close keyboard
  void _closeKeyboard2() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: InkWell(
          onTap: (){
            _closeKeyboard2();
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Login to your account",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _usernameController,
                focusNode: _usernameFocusNode,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              // forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text("Username: ${_usernameController.text}"),
              Text("Password: ${_passwordController.text}"),
              // TextField(
              //   controller: _usernameTextEditingController,
              //   keyboardType: TextInputType.text,
              //   obscureText: false,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Username',
              //     hintText: 'Enter your username',
              //     hintStyle: TextStyle(
              //       color: Colors.red,
              //       fontSize: 20,
              //       fontFamily: 'Dancing Script',
              //     ),
              //     prefixIcon: Icon(Icons.lock),
              //     suffixIcon: Icon(Icons.remove_red_eye),
              //     filled: true,
              //     fillColor: Colors.indigo[50],
              //     counterText: '0/10',
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       _username = value;
              //     });
              //   },
              // ),
              // const SizedBox(height: 20),
              // Text("username: ${_usernameTextEditingController.text}"),
              // const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       _username = _usernameTextEditingController.text;
              //     });
              //   },
              //   child: Text('Rebuild'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
