import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_users/github/core/domain/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      leading: Hero(
        tag: user.name,
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            user.avatarUrlSmall,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            user.publicRepos.toString(),
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
          ),
          Text(
            "Repos",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
