import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/app_listview.dart';

import 'app_addjob.dart';
import 'signin_screen.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
        floatingActionButton: Container(
          height: 74,
          width: 74,
          child: FloatingActionButton(
            backgroundColor: Color(0xFFE5E5E5),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => AddNewJobScreen())
              );
            },
            child: const Icon(
              Icons.add,
              size: 43,
              color: Color(0xFF191720),

            ),
          ),
        ),
      backgroundColor: Color(0xFF191720),
      body: Padding(
          padding: const EdgeInsets.only(
              top: 79,
              left: 27,
              //bottom: 59,
              right: 27
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignIn()));
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
                    ),
                  )
                ],
              ),

              const Text(
                "Ishaq Hassan",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                    fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300
                ),
              ),
              const SizedBox(height: 19),
              Container(
                  padding: const EdgeInsets.only(
                    top: 7,
                    bottom: 8,
                    //left: 55
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFF1E1C24),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color(0xFF5D5D67),
                          width: 1
                      )

                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Color(0xFF5D5D67)),
                      hintText: "Search keywords",
                      hintStyle: TextStyle(
                        color: Color(0xFF8F8F9E),
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                      ),
                      border: InputBorder.none
                    ),
                  ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(top: 11),
                  children: const <Widget>[
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",),
                    SizedBox(height: 11),
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",),
                    SizedBox(height: 11),
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",),
                    SizedBox(height: 11),
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",),
                    SizedBox(height: 11),
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",),
                    SizedBox(height: 11),
                    AppListView(jobTitle: "Flutter Developer Required",jobLocation: "Karachi,Pakistan",)
                  ],
                ),
              )
            ],
          ),
      )

    );
  }
}

