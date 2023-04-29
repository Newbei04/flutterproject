import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditInfoScreen extends StatefulWidget {
  final String name;
  final String position;
  final String company;
  final String rate;
  final String date;

  const EditInfoScreen({
    Key? key,
    required this.name,
    required this.position,
    required this.company,
    required this.rate,
    required this.date,
  }) : super(key: key);

  @override
  _EditInfoScreenState createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  late TextEditingController _nameController;
  late TextEditingController _positionController;
  late TextEditingController _companyController;
  late TextEditingController _rateController;
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _positionController = TextEditingController(text: widget.position);
    _companyController = TextEditingController(text: widget.company);
    _rateController = TextEditingController(text: widget.rate);
    _dateController = TextEditingController(text: widget.date);
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
                'name': _nameController.text,
                'position': _positionController.text,
                'company': _companyController.text,
                'rate': _rateController.text,
                'date': _dateController.text,
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
                    )),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _positionController,
                decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _companyController,
                decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _rateController,
                decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
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
