import 'package:flutter/material.dart';
import 'donor_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donation")),
      drawer: Drawer(),
      body: Center(
        child: Text(
          "Welcome to Blood Donation",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: Text("Home")),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonorListPage()),
                );
              },
              child: Text("Donor List"),
            ),
            TextButton(onPressed: () {}, child: Text("Profile")),
          ],
        ),
      ),
    );
  }
}
