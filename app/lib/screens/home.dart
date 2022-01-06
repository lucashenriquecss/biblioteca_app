import 'package:app/books.dart';
import 'package:app/screens/detail.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Books booksService = Books(); // chamando classe  Books que faz a ligação da API com a aplicação mobile
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(      
          child: FutureBuilder<List>(
            //chamando a API
            future: booksService.getAllBooks(),
            builder: (context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length, // contagem de cards
                    itemBuilder: (context, i) {
                      return Card(
                          elevation: 8.0,
                          child: Column(
                            children: [
                              Container(
                                height: 200.0,
                                child: ListTile(
                                  title:Image.network(snapshot.data![i]['images'],
                                  fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(snapshot.data![i]['title']),
                                subtitle: Text(snapshot.data![i]['author']),
                                onTap: () => {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                                      return DetailBook();
                                    }))
                                  },
                              ),
                              Container(
                                padding: EdgeInsets.all(16.0),
                                alignment: Alignment.centerLeft,
                                child: Text(snapshot.data![i]['publishing_company']),
                              ),
                             
                            ],
                          )
                          );
                      }
                    );
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            },
          ),
    )
    );
  }
}