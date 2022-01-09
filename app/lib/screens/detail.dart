import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  final title, author,pub,img,resume,pages;

  DetailBook({this.title, this.author, this.pub, this.img, this.resume, this.pages});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),       
        title: Text('Library',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
       
        ],
      ),
      body: ListView(
        children: [
        SizedBox(height: 50.0),
         Center(
              child: Text(title,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
        SizedBox(height: 30.0),
        Hero(
          tag: img,
          child: Image.network(img,
            height: 150.0,
            width: 100.0,
            fit: BoxFit.contain,
          ),
         
         ),
         
          SizedBox(height: 20.0),
          Center(
              child: Text(author,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
          
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text(resume,
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Center(
                child: Text(pub,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 24.0)),
              ),
              SizedBox(height: 10.0),
            Center(
                child: Text('Páginas: $pages',
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 24.0)),
              ),
        ],
      ),
    );
  }
}
