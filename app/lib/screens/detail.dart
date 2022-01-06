import 'package:flutter/material.dart';
import 'package:app/books.dart';

class DetailBook extends StatefulWidget {
  @override
  _DetailBookState createState() => _DetailBookState();
}

class _DetailBookState extends State<DetailBook> {
  Books booksService = Books();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List>(
        //chamando a API
        future: booksService.getAllBooks(),
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.length, // contagem de cards
                itemBuilder: (context, i) {
                  return Container(
                    
                    
                  );
                });
          } else {
            return const Center(
              child: Text('No Data Found'),
            );
          }
        },
      ),
    );
  }
}
