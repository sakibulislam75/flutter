import 'package:flutter/material.dart';
import 'details_page.dart';

class DonorListPage extends StatelessWidget {
  final List<Map<String, String>> donors = [
    {"name": "Md Mahfuj Hossain", "bloodType": "A+", "mobile": "01711111111"},
    {"name": "Sakibul Islam", "bloodType": "B+", "mobile": "01811111111"},
    {"name": "Mahmud Hasan", "bloodType": "O-", "mobile": "01911111111"},
    {"name": "Mehedi Hasan Rony", "bloodType": "AB+", "mobile": "0131111111"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor List")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: donors.length,
          itemBuilder: (context, index) {
            final donor = donors[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    donor["name"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(donor: donor),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ), // Small button
                      textStyle: TextStyle(fontSize: 14),
                    ),
                    child: Text("Details"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
