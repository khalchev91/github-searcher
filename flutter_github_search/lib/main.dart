import 'package:flutter/material.dart';

import 'package:meta/meta.dart';
import 'package:common_github_search/common_github_search.dart';
import 'package:flutter_github_search/search_form.dart';

void main() {
  final GithubRepository _githubRepository = GithubRepository(GithubCache(),GithubClient());

  runApp(App(githubRepository:_githubRepository));
}

class App extends StatelessWidget {
 final GithubRepository githubRepository;

 const App({
   Key key,
   @required this.githubRepository
}): super(key:key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Github Search app'),),
        body: SearchForm(githubRepository: githubRepository),
      )
    );
  }
}
