
import 'package:flutter/material.dart';

class TeachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teach'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image at the beginning
            Image.asset(
              'assets/teach_image.png', // Replace with image path
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),

            // Text comments
            Text(
              'Want to teach a class?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'We encourage all of our First Class members to teach any class they think they\'re an expert in!',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),

            // "Create a class" button
            ElevatedButton(
              onPressed: () {
                // Navigate to the page where they can create a class
                // You can implement the navigation logic here
              },
              child: Text('Create a class'),
            ),
            SizedBox(height: 16.0),

            // List of class names
            ListTile(
              leading: Icon(Icons.class_), // You can replace this with your icon
              title: Text('Class Name'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement edit class logic here
                    },
                    child: Text('Edit'),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement request count logic here
                    },
                    child: Text('Request Count'),
                  ),
                ],
              ),
            ),

            // Add more ListTile items for additional classes as needed
          ],
        ),
      ),
    );
  }
}
