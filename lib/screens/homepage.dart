import 'package:flutter/material.dart';
import 'package:rider_app/screens/user/user_login.dart';
import 'package:rider_app/widgets/home_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  nextpage() {
    setState(() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UserLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: appbarcolor,
        //   title: Text(
        //     "Team finder",
        //     style: apptitle.boldStyle,
        //   ),
        // ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/originals/e5/07/d7/e507d704d4b6fdcb17116762fcd99acd.gif",
            ),fit: BoxFit.fill
          )),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        nextpage();
                      },
                      child: HomeCards(
                        text: "User Login",
                      ),
                    ),
                    SizedBox(height: 10, width: 10),
                    HomeCards(
                      text: "Rider Login",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: HomeCards(
                        text: "Admin Login",
                      ),
                    ),
                    SizedBox(height: 10, width: 10),
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
