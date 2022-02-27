import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class  ContactPage extends StatelessWidget {
  const ContactPage({ Key? key}) : super(key: key);
  // make class "name" extends imp

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text("help us grow and give feedback"),
        ),
         
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Card(
            color: Colors.white70,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
              Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextButton.icon(
                icon: const Icon(Icons.add_to_home_screen),
                label: const Text(
                  "Open Website",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () => launch("http://officialguidance.com"),
              )
              ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextButton.icon(
                      icon: const Icon(Icons.call),
                      label:const Text(
                          "03239900077", style: TextStyle(fontSize: 25),
                      ),
                      onPressed: (){}
                      //  {await Future.delayed(const Duration(seconds: 2), (){});}
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Card(
            color: Colors.white70,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextButton.icon(
                      icon: const Icon(Icons.email),
                      label:const Text(
                          "contact instagram", style: TextStyle(fontSize: 25)),
                      onPressed: () =>
                          launch(
                              "https://instagram.com/laibaillustrates?utm_medium=copy_link"),
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child:  TextButton.icon(
                      icon: const Icon(Icons.sms),
                      label:const Text(
                          "Write a SMS", style: TextStyle(fontSize: 25)),
                      onPressed: () => launch("sms:123456789"),
                     ),
                ),
              ],
            ),
          ),
          ],
          ),
          )
          )
      );
}
  