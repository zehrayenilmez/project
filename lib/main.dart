import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart';
import 'home_page.dart';
// Bu, kullanıcı giriş yaptıktan sonra yönlendirilecek sayfa

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://rmvfaqpokkgxhhsjhoog.supabase.co', // Supabase URL'inizi buraya ekleyin
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJtdmZhcXBva2tneGhoc2pob29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk4NjQxOTAsImV4cCI6MjAzNTQ0MDE5MH0.vw2yIgx6KYW6Bi_n3WJeLXSdxXvq748DJd6GqThEXNo', // Supabase anon anahtarınızı buraya ekleyin
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Supabase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),  // LoginPage ana sayfa olarak ayarlanır
    );
  }
}
