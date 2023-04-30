part of 'movies_horizontal_list_view.dart';

class _Title extends StatelessWidget {
  const _Title({
    this.title,
    this.subtitle,
  });

  final String? title;
  final String? subtitle;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (title is String)
            Text(
              title!,
              style: Theme.of(
                context,
              ).textTheme.titleLarge,
            ),
          if (subtitle is String)
            Chip(
              label: Text(
                subtitle!,
              ),
              backgroundColor: Theme.of(
                context,
              ).colorScheme.primaryContainer,
              labelStyle: TextStyle(
                color: Theme.of(
                  context,
                ).colorScheme.primary,
              ),
            ),
        ],
      ),
    );
  }
}
