import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditInfoScreen1 extends StatefulWidget {
  final String name1;
  final String position1;
  final String company1;
  final String rate1;
  final String date1;

  const EditInfoScreen1({
    Key? key,
    required this.name1,
    required this.position1,
    required this.company1,
    required this.rate1,
    required this.date1,
  }) : super(key: key);

  @override
  _EditInfoScreenState1 createState() => _EditInfoScreenState1();
}

class _EditInfoScreenState1 extends State<EditInfoScreen1> {
  late TextEditingController _nameController;
  late TextEditingController _positionController;
  late TextEditingController _companyController;
  late TextEditingController _rateController;
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name1);
    _positionController = TextEditingController(text: widget.position1);
    _companyController = TextEditingController(text: widget.company1);
    _rateController = TextEditingController(text: widget.rate1);
    _dateController = TextEditingController(text: widget.date1);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _positionController.dispose();
    _companyController.dispose();
    _rateController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Info'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              final result = {
                'name1': _nameController.text,
                'position1': _positionController.text,
                'company1': _companyController.text,
                'rate1': _rateController.text,
                'date1': _dateController.text,
              };
              Navigator.pop(context, result);
              // Save changes here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _positionController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _companyController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _rateController,
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _dateController,
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    final DateFormat formatter = DateFormat('MMMM d, yyyy');
                    setState(() {
                      _dateController.text = formatter.format(pickedDate);
                    });
                  }
                },
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
