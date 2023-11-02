import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.grey[800],
                ))
          ],
        ),
      ),
    );
  }
}
