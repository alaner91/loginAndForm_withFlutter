import 'package:cuestionario_ejemplo/provider/google_sign_in.dart';
import 'package:cuestionario_ejemplo/widget/logged_in_widget.dart';
import 'package:cuestionario_ejemplo/widget/sign_up_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return LoggedInWidget();
              } else {
                return SignUpWidget();
              }
            },
          ),
        ),
      );

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              'img/logo_ibero.jpeg',
              height: 180,
            ),
          ),
          Center(child: CircularProgressIndicator()),
        ],
      );
}
