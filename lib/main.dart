import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/bloc/downloads_bloc.dart';
import 'package:netflix_app/domain/core/dependency_injection/injectable.dart';
import 'package:netflix_app/mainpage/mainscreen_page.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx)=> getIt<DownloadsBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black,background: Colors.black),
          useMaterial3: true,
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white)
          )
        ),
        home: const MainScreenPage(),
      ),
    );
  }
}
