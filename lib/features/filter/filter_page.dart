import 'package:flutter/material.dart';
import 'package:responsive_playground/resources/resources.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _FilterCategory('Categories'),
            _FilterCheckbox(),
            _FilterCheckBoxDivider(),
            _FilterCheckbox(),
            _FilterCheckBoxDivider(),
            _FilterCheckbox(),
            _FilterCheckBoxDivider(),
            _FilterCheckbox(),
            _FilterCheckBoxDivider(),
            _FilterCheckbox(),
            const SizedBox(height: Spacings.large),
            const Divider(height: 1.0, color: Colors.black12),
            _FilterCategory('Category'),
            CategorySlider(),
            const Divider(height: 1.0, color: Colors.black12),
            _FilterCategory('Category'),
            CategorySlider(),
          ],
        ),
      ),
    );
  }
}

class _FilterCategory extends StatelessWidget {
  final String value;

  const _FilterCategory(
    this.value, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacings.large),
      child: Text(
        value,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            .copyWith(color: Colors.black38),
      ),
    );
  }
}

class _FilterCheckBoxDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.0,
      indent: Spacings.xxlarge,
      color: Colors.black12,
    );
  }
}

class _FilterCheckbox extends StatefulWidget {
  @override
  _FilterCheckboxState createState() => _FilterCheckboxState();
}

class _FilterCheckboxState extends State<_FilterCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Spacings.xsmall,
        horizontal: Spacings.large,
      ),
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        contentPadding: EdgeInsets.zero,
        leading: Checkbox(
            value: value,
            onChanged: (value) => setState(() => this.value = value)),
        title: Text('Category'),
      ),
    );
  }
}

class CategorySlider extends StatefulWidget {
  @override
  _CategorySliderState createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Spacings.zero,
        horizontal: Spacings.small,
      ),
      child: Slider(
        value: value,
        activeColor: Colors.black,
        inactiveColor: Colors.black12,
        onChanged: (value) => setState(() => this.value = value),
      ),
    );
  }
}
