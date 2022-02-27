import 'package:flutter/material.dart';

import 'app_button.dart';
import 'app_dashboard.dart';
import 'textField.dart';

class EditJobScreen extends StatelessWidget {
  String positionName = "Flutter Developer";
  String requirement = """ Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis! """;
  @override
  Widget build(BuildContext context) {
    TextEditingController position = TextEditingController()..text = positionName;
    TextEditingController description = TextEditingController()..text = requirement;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 89, left: 27, right: 27, bottom: 59),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Dashboard()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_rounded,
                      color: Colors.white, size: 25),
                ),
                const SizedBox(width: 31),
                const Text("Edit Job",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                        fontFamily: 'Poppins'))
              ],
            ),
            const SizedBox(height: 11),
            // const AppTextField(
            //   placeholder: "Enter position name",
            // ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFF1E1C24),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF5D5D67), width: 1)),
              child: TextField(
                controller: position,
                style: const TextStyle(fontSize: 15, color: Colors.white),
                decoration: const InputDecoration(
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFF1E1C24),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF5D5D67), width: 1)),
              child: TextField(
                controller: description,
                maxLines: 11,
                style: const TextStyle(fontSize: 15, color: Colors.white),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dashboard()));
              },
              child: AppButton(label: "Update Job", onPressed: UpdateJob),
            )
          ],
        ),
      ),
    );
  }

  void UpdateJob() {}
}
