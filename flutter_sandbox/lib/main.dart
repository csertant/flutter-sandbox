import 'package:flutter/material.dart';
import 'package:flutter_sandbox/recipe.dart';
import 'package:flutter_sandbox/recipe_detail.dart';
import 'package:flutter_sandbox/theme.dart';

void main() {
  runApp(const SandboxApp());
}

class SandboxApp extends StatelessWidget {
  const SandboxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipify',
      theme: sandboxThemeData,
      home: const SandboxHomePage(title: 'Recipe Calculator'),
    );
  }
}

class SandboxHomePage extends StatefulWidget {
  const SandboxHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SandboxHomePage> createState() => _SandboxHomePageState();
}

class _SandboxHomePageState extends State<SandboxHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
