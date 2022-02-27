import 'package:flutter/material.dart';
import 'package:my_first_app/app_button.dart';

import 'app_dashboard.dart';
import 'textField.dart';

class AddNewJobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 89,
          left: 27,
          right: 27,
          bottom: 59
        ),
        child: Column(
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               IconButton(
                 onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Dashboard()));
                 },
                 icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white,
                 size: 25),
               ),
               const SizedBox(width: 31),
               const Text("Add New Job",
                   style: TextStyle(
                       color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: -0.5,
                     fontFamily: 'Poppins'
                   )
               )
             ],
           ),
            const SizedBox(height: 11),
            const AppTextField(
                placeholder: "Enter position name",
            ),
            SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFF1E1C24),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color(0xFF5D5D67),
                      width: 1
                  )
              ),
              child: const TextField(
                maxLines: 11,
                style: TextStyle(
                    fontSize: 15, color: Colors.white
                ),
                decoration: InputDecoration(hintText: "Describe Requirements...",
                    hintStyle: TextStyle(
                        color: Color(0xFF8F8F9E), fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'
                    ),
                    border: InputBorder.none

                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dashboard()));
              },

              child: AppButton(label: "Submit Job", onPressed: SubmitJob),

            )
          ],
        ),
      ),

    );
  }
  void SubmitJob(){

  }
}
