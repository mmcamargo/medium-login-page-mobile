import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  _customButton(
    String asset,
    String text,
  ) {
    return Container(
      height: 55,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 17.5,
                width: 20,
                child: Image.asset(
                  asset,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _body() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          30,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Image.asset(
              'assets/images/medium.png',
              height: 50,
              width: 275,
              alignment: Alignment.center,
            ),
            Container(
              height: 100,
            ),
            const Text(
              'Join Medium.',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
            Container(
              height: 50,
            ),
            _customButton(
              'assets/images/google.png',
              'Sign up with Google',
            ),
            Container(
              height: 15,
            ),
            _customButton(
              'assets/images/email.png',
              'Sign up with Email',
            ),
            Container(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      'Or, sign up with',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
            ),
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  16,
                ),
                child: Image.asset(
                  'assets/images/facebook.png',
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
                children: [
                  TextSpan(text: 'By signing up, you agree to our '),
                  TextSpan(
                    text: 'Terms of Service ',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: 'and acknowledge that our ',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: 'applies to you.',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
