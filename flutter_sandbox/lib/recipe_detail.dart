import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(widget.recipe.imageUrl),
                  ),
                );
              case 1:
                return const SizedBox(
                  height: 4,
                );
              case 2:
                return Text(
                  widget.recipe.label,
                  style: Theme.of(context).textTheme.bodyText2,
                );
              case 3:
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingredients[index];

                      return Text('${ingredient.quantity * _sliderVal} '
                          '${ingredient.measure} '
                          '${ingredient.name}');
                    },
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                  ),
                );
              default:
                return Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  label: '${_sliderVal * widget.recipe.servings} servings',
                  value: _sliderVal.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _sliderVal = newValue.round();
                    });
                  },
                  activeColor: Theme.of(context).colorScheme.primary,
                  inactiveColor: Theme.of(context).colorScheme.primaryContainer,
                );
            }
          },
        ),
      ),
    );
  }
}
