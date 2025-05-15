import 'package:flutter/material.dart';
import 'package:meals_app/widgets/custom_switchList.dart';

enum Filters {glutenfree,lactosefree,vegetarian,vegan}

class FiltersScreen extends StatefulWidget {
  FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilter = false;
  var _lactosFreeFilter = false;
  var _vegitarianFilter = false;
  var _veganFilter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filters.glutenfree: _glutenFreeFilter,
            Filters.lactosefree: _lactosFreeFilter,
            Filters.vegetarian: _vegitarianFilter,
            Filters.vegan: _veganFilter,
          });
        },
        child: Column(
          children: [
            CustomSwitchlist(
              value: _glutenFreeFilter,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilter = isChecked;
                });
              },
              title: 'Gluten-Free',
              subtitle: 'Only include Gluten-free meals',
            ),
            CustomSwitchlist(
              value: _lactosFreeFilter,
              onChanged: (isChecked) {
                setState(() {
                  _lactosFreeFilter = isChecked;
                });
              },
              title: 'Lactose-Free',
              subtitle: 'Only include Lactose-Free meals',
            ),
            CustomSwitchlist(
              value: _vegitarianFilter,
              onChanged: (isChecked) {
                setState(() {
                  _vegitarianFilter = isChecked;
                });
              },
              title: 'Vegetarian',
              subtitle: 'Only include vegetarian meals',
            ),
            CustomSwitchlist(
              value: _veganFilter,
              onChanged: (isChecked) {
                setState(() {
                  _veganFilter = isChecked;
                });
              },
              title: 'Vegan',
              subtitle: 'Only include Vegan meals',
            ),
          ],
        ),
      ),
    );
  }
}
