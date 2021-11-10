part of models;


class IntroModel{
  final String? imagePath;
  final String? title;
  final String? description;

  IntroModel({this.imagePath, this.title, this.description});

  static List<IntroModel> data=[
    IntroModel(
        imagePath: 'assets/intro1.png',
      title: 'Find the food you like',
        description: 'Discover the best food over 1000 nearest restaurants.'
    ),
    IntroModel(
        imagePath: 'assets/intro2.png',
      title: 'Fast delivery',
        description: 'Discover the best delivery service.'
    ),
    IntroModel(
        imagePath: 'assets/intro3.png',
      title: 'Live tracking',
        description: 'Real time tracking of your ordered food.'
    )
  ];

}