import 'package:api_5/bloc/home_bloc.dart';
import 'package:api_5/bloc/home_event.dart';
import 'package:api_5/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _homeBloc = HomeBloc(Initial());

  @override
  void initState() {
    super.initState();
    _homeBloc.add(GetData());
  }

  @override
  void dispose() {
    super.dispose();
    _homeBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API"),
      ),
      body: BlocBuilder(
        bloc: _homeBloc,
        builder: (BuildContext context, state) {
          if (state is HomeProcess) {
            return const Center(
                // child: CupertinoActivityIndicator(),
                child: Text("Dang xu ly"));
          }

          if (state is HomeSuccess) {
            return _buildBody();
          }

          if (state is HomeFail) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          return const Center();
        },
      ),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: _homeBloc.items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            color: Colors.lightGreenAccent,
            child: ListTile(
              leading: Text(_homeBloc.items[index].id.toString()),
              title: Text(
                _homeBloc.items[index].club,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(_homeBloc.items[index].urlImage),
            ),
          ),
        );
      },
    );
  }
}
