import 'package:flutter/material.dart';
import 'package:online_shop_app/features/presentation/pages/blogs/screens/postdetail.dart';
import 'package:online_shop_app/features/presentation/pages/blogs/services/post.dart';

class LatestPost extends StatefulWidget {
  LatestPost({Key? key}) : super(key: key);

  @override
  _LatestPostState createState() => _LatestPostState();
}

class _LatestPostState extends State<LatestPost> {
  Post postService = Post();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<List>(
        future: postService.getAllPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data?.length == 0) {
              return const Center(
                child: Text("0 Post"),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, i) {
                  // print(snapshot.data![i]['content']['rendered']);
                  return Card(
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Image.network(snapshot.data![i]["_embedded"]
                                ["wp:featuredmedia"][0]["source_url"]),
                          ),
                          Expanded(
                              child: Container(
                            margin:
                                const EdgeInsets.only(bottom: 10.0, left: 10.0),
                            child: Text(
                              snapshot.data![i]['title']['rendered'],
                              style: const TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      ),
                      subtitle: Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          snapshot.data![i]['content']['rendered']
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
                              .replaceAll("&#8220;", "")
                              .replaceAll("&#8221;", "")
                              .replaceAll("<a", "")
                              .replaceAll("href=", "")
                              .replaceAll("&#8217;", "")
                              .replaceAll("&#8216;", "")
                              .replaceAll("</p>", ""),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PostDetail(data: snapshot.data?[i]),
                          ),
                        );
                      },
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
