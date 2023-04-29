import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditInfoScreen2 extends StatefulWidget {
  final String name2;
  final String position2;
  final String company2;
  final String rate2;
  final String date2;

  const EditInfoScreen2({
    Key? key,
    required this.name2,
    required this.position2,
    required this.company2,
    required this.rate2,
    required this.date2,
  }) : super(key: key);

  @override
  _EditInfoScreenState2 createState() => _EditInfoScreenState2();
}

class _EditInfoScreenState2 extends State<EditInfoScreen2> {
  late TextEditingController _nameController;
  late TextEditingController _positionController;
  late TextEditingController _companyController;
  late TextEditingController _rateController;
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name2);
    _positionController = TextEditingController(text: widget.position2);
    _companyController = TextEditingController(text: widget.company2);
    _rateController = TextEditingController(text: widget.rate2);
    _dateController = TextEditingController(text: widget.date2);
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
                'name2': _nameController.text,
                'position2': _positionController.text,
                'company2': _companyController.text,
                'rate2': _rateController.text,
                'date2': _dateController.text,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
