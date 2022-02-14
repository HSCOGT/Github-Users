import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_users/core/presentation/routes/app_router.gr.dart';
import 'package:github_users/search/presentation/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar(
        title: 'GitHub Users',
        hint: 'Search for any GitHub user...',
        onShouldNavigateToResultPage: (searchTerm) {
          AutoRouter.of(context)
              .push(SearchedUsersRoute(searchTerm: searchTerm));
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.manage_search,
                size: 64,
              ),
              Text(
                "Type anything on the search bar and see the users appear!",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
