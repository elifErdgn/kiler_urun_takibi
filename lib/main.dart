import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/anaSayfa.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: "https://xgqsbjzjjuselpkxbvdr.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhncXNianpqanVzZWxwa3hidmRyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODEwNjM5MzMsImV4cCI6MTk5NjYzOTkzM30.ixPmzTVbeIUNJ96HpN-dnq45WOuwqrCw39KPsfYoLMQ",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeDashboard(),
    );
  }
}

//KilerUrunTakip99
