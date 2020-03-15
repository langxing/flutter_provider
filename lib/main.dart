import 'package:flutter/material.dart';
import 'package:flutter_provider/login/login_page.dart';
import 'package:flutter_provider/login/login_viewmodel.dart';
import 'package:flutter_provider/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            final _viewModel = new HomeViewModel();
            _viewModel.init(context);
            return _viewModel;
            },
          ),
        ChangeNotifierProvider(create: (context) {
          LoginViewModel _viewModel = new LoginViewModel();
          return _viewModel;
        })
        ],
      child: App(),
    )
  );

}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Consumer<HomeViewModel>(
        builder: (context, provider, child) {
          return ListView.builder(
              itemCount: provider.data?.length ?? 0,
              itemBuilder: (context, index) => Text(provider.data[index].title ?? "")
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }, child: Icon(Icons.next_week),),
    );
  }

}

