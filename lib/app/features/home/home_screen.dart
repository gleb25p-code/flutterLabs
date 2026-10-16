import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../../extensions/widgets_extensions.dart';
import 'home_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(title: Text('Разнообразная Кухня')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/shvedskii_stol.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              'Рецепты',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemCount: recipes.length,
              itemBuilder: (_, i) => ContentCard(content: recipes[i]),
              separatorBuilder: (_, _) => 16.ph,
            ),
          ],
        ),
      ),
    );
  }
}
