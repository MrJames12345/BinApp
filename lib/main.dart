// Packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Styles
import 'styles.dart';

// Run
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bin App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'User: Jimmy Recard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // State
  bool sendSmsChecked = false;

  // Build
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Top section
                    Column(
                      children: [

                        // First Name
                        SizedBox(
                          width: screenWidth,
                          height: 60,
                          child: BM_Components.textField(
                            placeholder: "First Name",
                            onChanged: (newValue) { print(newValue); }
                          ),
                        ),

                        // Last Name
                        SizedBox(
                          width: screenWidth,
                          height: 60,
                          child: BM_Components.textField(
                            placeholder: "Last Name",
                            onChanged: (newValue) { print(newValue); }
                          ),
                        ),

                        SizedBox(height: 20),

                        // Send SMS on bin drop-off confirmation
                        SizedBox(
                          width: screenWidth,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Send SMS on bin drop-off confirmation",
                                  style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: BM_Colours.black)),
                              BM_Components.checkbox(checked: sendSmsChecked, onChanged: (newChecked) { setState(() { sendSmsChecked = newChecked ?? false; }); })
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("SAVED"),
        tooltip: 'Save user',
        child: const Icon(Icons.save),
      ),
    );
  }
}
