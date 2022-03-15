import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final data;
  const PostDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Rella Social - Latest Post"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: Text(
                data['title']['rendered'],
                style: const TextStyle(
                  color: Colors.white,
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(data["_embedded"]["wp:featuredmedia"][0]["source_url"]),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              data['content']['rendered']
                  .toString()
                  .replaceAll("<p>", "")
                  .replaceAll("</a>", "")
                  .replaceAll("</li>", "")
                  .replaceAll("<li>", "")
                    .replaceAll("<ul>", "")
                       .replaceAll("</ul>", "")
                   .replaceAll("<strong>", "")
                      .replaceAll("</strong>", "")
                  .replaceAll("</ol>", "")
                  .replaceAll("<ol>", "")
                  
                  .replaceAll("<a", "")
                  .replaceAll("href=", "")
                  .replaceAll("&#8217;", "")
                    .replaceAll("&#8216;", "")
                  .replaceAll("</p>", ""),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                decorationThickness: 1,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
