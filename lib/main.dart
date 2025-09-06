import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/theme/app_theme.dart';
import 'config/theme/util.dart';
import 'features/movies/presentation/pages/movies_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context, "Roboto", "Afacad");
    final theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Filmes App',
      home: const MoviesPage(),
      theme: theme.light(),
      darkTheme: theme.dark(),
      highContrastDarkTheme: theme.darkHighContrast(),
      highContrastTheme: theme.lightHighContrast(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
