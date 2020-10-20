import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/networkService/api_service.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LandingScreenState();
  }


}

class _LandingScreenState extends State<LandingScreen> {

  static const String AUTH_HEADER = 'api-key';
  static const String  V4_AUTH_HEADER = 'cc0eddbc-e726-4642-a4b9-7691925b7706';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('News Headline'),
      ),
      body: _buildList(context),
    );
  }


  FutureBuilder<Response<NewsModel>> _buildList(BuildContext context) {

    return FutureBuilder<Response<NewsModel>>(
      future: Provider.of<ApiService>(context).getNews(),
      builder: (ctx, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          if(snapshot.hasError) {
            return Center(
                child: Text(snapshot.error.toString(),
                  textAlign: TextAlign.center,
                )
            );
          }
          final news = snapshot.data.body;
          return _buildNewsList(ctx, news);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },

    );
  }

  ListView _buildNewsList(BuildContext ctx, NewsModel news) {

    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: news.results.length,
      itemBuilder: (ctx, i) {
        return Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              news.results[i].title,
            ),
          ),
        );
      },

    );
  }


}