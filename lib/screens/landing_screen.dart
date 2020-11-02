import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/repositories/news_repo.dart';

class LandingScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen> {

  NewsRepository _repo;
  NewsModel _response;
  bool _isFetched;

  @override
  void initState() {
    _isFetched = false;
    super.initState();
    _repo = NewsRepository();
    fetchNews();
  }
  List _elements = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('News Headline'),
      ),
      body: _buildNewsList(context, _response),
    );
  }


  Future<NewsModel> fetchNews() async {
    _response = await _repo.fetchNews();
    _isFetched = true;
  }

  // FutureBuilder<Response<NewsModel>> _buildList(BuildContext context) {
  //
  //   return FutureBuilder<Response<NewsModel>>(
  //     future: Provider.of<ApiService>(context).getNews(),
  //     builder: (ctx, snapshot) {
  //       switch(snapshot.connectionState) {
  //         case ConnectionState.none:
  //         case ConnectionState.waiting:
  //           return Center(child: CircularProgressIndicator());
  //           break;
  //         default:
  //         // Completed with error
  //           if (snapshot.hasError)
  //             return Container(child:Text(snapshot.error.toString()));
  //
  //           // Completed with data
  //           final news = snapshot.data.body;
  //           return _buildNewsList(ctx, news);
  //       }
  //     },
  //
  //   );
  // }

  ListView _buildNewsList(BuildContext ctx, NewsModel news) {

    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: news.results?.length,
      itemBuilder: (ctx, i) {
        return Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              news.results[i].webTitle,
            ),
          ),
        );
      },

    );
  }


}