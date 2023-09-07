import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        color: Colors.pink[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/pepe.png'),
            const Text(
              'Pepe Frog',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showAdaptiveDialog(
                    context: context,
                    builder: (context) => const AlertDialog.adaptive(
                          title: Text('Hello!'),
                          content: Text('Feeling good 🐸'),
                        ));
              },
              child: const Text('Click to show an alert'),
            )
          ],
        ),
      ),
    );
  }
}
