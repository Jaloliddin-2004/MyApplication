import 'package:flutter/material.dart';

/// Flutter code sample for [FutureBuilder].

void main() => runApp(const FutureBuilderExampleApp());

class FutureBuilderExampleApp extends StatelessWidget {
  const FutureBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FutureBuilderExample(),
    );
  }
}

class FutureBuilderExample extends StatefulWidget {
   
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
   TextEditingController _textController = TextEditingController();
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.displayMedium!,
      textAlign: TextAlign.center,
      child: FutureBuilder<String>(
        future: _calculation, // a previously-obtained Future<String> or null
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            children = <Widget>[
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Result: ${snapshot.data}'),
              ),
            ];
          } else if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
            ];
          } else {
            children = const <Widget>[
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Awaiting result...'),
              ),
            ];
          }
          return Center(
            child: Column(
          children: [
            ListTile(
                title: Text(
                  'Veniro Pointo',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.notifications_active)),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: _textController,
                decoration: InputDecoration(
                    label: Text(' '),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(
              height: 20,
            ),
            PageView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.starrosesandplants.com/wp-content/uploads/random"'))),
                  child: Column(
                    children: [
                      Text(
                        'Mothers day',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                        ),
                      ),
                      Text(
                        'Get 25% Discount',
                        style: TextStyle(fontSize: 5),
                      ),
                    ],
                  ),
                )
              ],
            ),
           
          ],
        ),
          );
        },
      ),
    );
  }
}
