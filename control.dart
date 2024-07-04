import 'package:flutter/material.dart';

class control extends StatefulWidget {
  const control({super.key});

  @override
  State<control> createState() => _controlState();
}

class _controlState extends State<control> {
  String _selectedOption = '';
  //list of options
  final List<String> option = ['cricket', 'codeing', 'teaching'];

  final Map<String, bool> selectoption = {
    'cricket': false,
    'codeing': false,
    'teaching': false
  };
  String _displayedValues = '';
  void _printSelectedValues() {
    setState(() {
      _displayedValues = selectoption.entries
          .where((element) => element.value)
          .map((e) => e.key)
          .join(',');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("controls page"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("select hobby"),
            Row(
              children: option.map((String _op) {
                return Expanded(
                  child: CheckboxListTile(
                      title: Text(_op),
                      value: selectoption[_op],
                      onChanged: (bool? value) {
                        setState(() {
                          selectoption[_op] = value ?? false;
                        });
                      }),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _printSelectedValues,
                child: Text(
                  _displayedValues.isEmpty
                      ? 'No options selected'
                      : 'Selected options: $_displayedValues',
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      value: 'male',
                      title: Text('male'),
                      groupValue: _selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
