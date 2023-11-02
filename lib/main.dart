import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //Quotes list
  List<Quote> quotes = [
    Quote(author: 'Akshith', text: 'Success is in your hands'),
    Quote(
        text: "Never wait for something to happen, make way to do something",
        author: 'Jobirin'),
    Quote(author: 'Scrapz', text: "Never lose hope untill you die"),
  ];

  //Function for displaying it in cards

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Quotes List"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) {
          return QuoteCard(quote: quote);
        }).toList(),
      ),
    );
  }
}
