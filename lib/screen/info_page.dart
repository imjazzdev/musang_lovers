import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 2, spreadRadius: 0.1, offset: Offset(0, 3)),
                      ],
                      
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),

                        child: Image.asset(
                      'assets/pp.jpeg',
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(height: 5,),
                  
                  Text("Developer"),
                  Text(
                    "I'zaaz Akhdan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Versi"),
                  Text("1 . 0 . 0",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.blue)),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey[400],
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Copyright(c) 2021 Jazzdev",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    // fontStyle: FontStyle.italic,
                    color: Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
