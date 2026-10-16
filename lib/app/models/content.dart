class Content {
  final String id;
  final String title;
  final String description;
  final String imagePath;

  final List<String> ingredients;
  final List<String> cookingSteps;

  const Content({
required this.id,    
required this.title,
required this.description,
required this.imagePath,

required this.ingredients,
required this.cookingSteps,
  });
}