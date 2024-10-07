import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF141724)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Burger Queen'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  final TextStyle titleStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.brown,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: const Icon(Icons.token),
        actions: [
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                height: 150,
                child: Center(
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              const Text(
                                'Mon restaurant le plus proche',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Text(
                                "4km",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF141724)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.touch_app, color: Colors.white),
                                SizedBox(width: 16),
                                Text(
                                  "Commander",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //sectionTitle important
              sectionTitle(title: "En ce momment..."),
              Center(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 10,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/layer-burger.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Une petite faim!?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Venez personnaliser votre burger",
                          style: TextStyle(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              sectionTitle(title: "Chaud devant !!!"),
              const Text("Le meilleur de nos burgers à portée de clic"),
              SizedBox(
                height: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      burgerCard(
                          name: "Twins",
                          url: "twins",
                          description: "Le berger qui donne la couronne"),
                      burgerCard(
                          name: "Big Queen",
                          url: "big-queen",
                          description: "Le berger qui donne la couronne"),
                      burgerCard(
                          name: "Egg Bacon",
                          url: "egg-bacon-burger",
                          description: "Le berger des lève tot"),
                      burgerCard(
                          name: "Prince",
                          url: "prince",
                          description: "Le berger qui donne la couronne"),
                      burgerCard(
                          name: "Cheese",
                          url: "cheese",
                          description: "Le berger qui donne la couronne"),
                    ],
                  ),
                ),
              ),
              sectionTitle(title: "Les Accompagnements"),
              Card(
                elevation: 8,
                child: Column(
                  children: [
                    sideDish(name: "Fites classiques", url: "fries"),
                    sideDish(name: "Frites à la pâtate", url: "patate-douce"),
                    sideDish(name: "Poutine", url: "poutine"),
                    sideDish(name: "Fromage", url: "potatoes"),
                  ],
                ),
              ),
              // Boisson
              sectionTitle(title: "Une petite soif ?"),
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                height: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      drink(
                        name: "Coca-Cola",
                        url: "classic-cola",
                      ),
                      drink(
                        name: "Sprite",
                        url: "sparkling",
                      ),
                      drink(
                        name: "Pepsi",
                        url: "orange-soda",
                      ),
                      drink(name: "Fanta", url: 'strawberry-soda'),
                    ],
                  ),
                ),
              ),
              sectionTitle(title: "Pour finir  une petite touchre sucrée "),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  douceur(
                      name: "Glace Oreo",
                      url: "oreo-ice",
                      size: MediaQuery.of(context).size.width * 0.4),
                  douceur(
                      name: "Donut",
                      url: "donut",
                      size: MediaQuery.of(context).size.width * 0.4),
                  douceur(
                      name: "Crèpe Fraise",
                      url: "strawberry-waffle",
                      size: MediaQuery.of(context).size.width * 0.4),
                  douceur(
                      name: "Cupcake",
                      url: "cupcake",
                      size: MediaQuery.of(context).size.width * 0.4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: sectionTitle(
                          title: "Et Bon appetit bien sur",
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 8),
      child: Text(title, style: titleStyle),
    );
  }

  Container burgerCard(
      {required String name,
      required String url,
      required String description}) {
    double size = 250;
    TextStyle descriptionStyle = const TextStyle(
      fontStyle: FontStyle.italic,
      color: Colors.black54,
    );
    return Container(
      margin: const EdgeInsets.all(12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.blueAccent.withOpacity(0.3),
      ),
      height: size,
      width: size,
      child: Column(
        children: [
          Image.asset(
            "assets/images/$url.jpg",
            height: size * 0.6,
            width: size,
            fit: BoxFit.cover,
          ),
          Text(name, style: titleStyle),
          Text(description,
              style: descriptionStyle, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Container sideDish({required String name, required String url}) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(
                  "assets/images/$url.jpg",
                ),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          const Divider(
            indent: 8,
            endIndent: 8,
          )
        ],
      ),
    );
  }

  Container drink({
    required String name,
    required String url,
  }) {
    final double height = 250;
    final double width = 125;

    return Container(
      margin: const EdgeInsets.all(8),
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/$url.jpg",
            fit: BoxFit.cover,
            height: height,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Container douceur(
      {required String name, required String url, required double size}) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$url.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
