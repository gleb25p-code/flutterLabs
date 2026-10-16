import 'package:flutter/material.dart';
import 'package:my_lab/app/features/home/home_data.dart';

class ContentScreen extends StatefulWidget{
final String contentId;

  const ContentScreen({super.key,
  required this.contentId});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen>{
  @override
  Widget build(BuildContext context){
    final recipe = recipes.firstWhere((r)=> r.id == widget.contentId);

    return Scaffold(
      appBar: AppBar(title: Text('Рецепт блюда ${recipe.title}')),
      body: SingleChildScrollView(
        child: Column(         
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
          Image.asset(
            recipe.imagePath,
            height: 250
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              Text(
                recipe.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                recipe.description,
                style: Theme.of(context).textTheme.bodyMedium,
                )
            ],)
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('Ингредиенты',
              style: Theme.of(context).textTheme.titleLarge,
              ),
              ...recipe.ingredients.map(
                (ing) => Text('- $ing'),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('Рецепт',
              style: Theme.of(context).textTheme.titleLarge,
              ),
              ...recipe.cookingSteps.asMap().entries.map(
                (entry) => Text('${entry.key + 1}. ${entry.value}'),
              ),
            ],
            ), 
          ),
          ],
        ),
      ),
    );
  }
}