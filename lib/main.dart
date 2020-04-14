import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/child_category.dart';

void main() {
  var childCategory = ChildCategory();
  var providers = Providers();
  providers..provide(Provider<ChildCategory>.value(childCategory));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活家',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
