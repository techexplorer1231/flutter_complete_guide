import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lcatoseFree = false;

  Widget _buildSwitchTile(String title, String description, bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: updateValue,
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters!'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your eal selection!',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildSwitchTile(
                  'Gluten-Free', 'Only include gluten-free meals', _glutenFree, (newValue) {
                setState(() {
                  _glutenFree = newValue;
                });
              }),
              _buildSwitchTile('Lactose-Free',
                  'Only include lactose-free meals', _lcatoseFree, (newValue) {
                setState(() {
                  _lcatoseFree = newValue;
                });
              }),
              _buildSwitchTile(
                  'Vegetarian', 'Only include vegetarian meals', _vegetarian, (newValue) {
                setState(() {
                  _vegetarian = newValue;
                });
              }),
              _buildSwitchTile('Vegan', 'Only include Vegan meals', _vegan, (newValue) {
                setState(() {
                  _vegan = newValue;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}
