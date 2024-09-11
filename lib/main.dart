import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bidding Page')),
        body: MaximumBid(),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  MaximumBidState createState() => MaximumBidState();
}

class MaximumBidState extends State<MaximumBid> {
  double _currentBid = 0.0;

  void _increaseBid() {
    setState(() {
      _currentBid += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Maximum Bid:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              '\$${_currentBid.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              child: Text('Increase Bid', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Changed from 'primary' to 'backgroundColor'
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
