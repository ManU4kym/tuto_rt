import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(title: const Text("Tutorial"), actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.info),
        )
      ]),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55),
              height: 50,
              width: 275,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: const Offset(0, 4),
                    color: Colors.black.withOpacity(0.2))
              ]),
              child: const Center(
                child: Text(
                  'Wozaa',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 34,
                      fontFamily: 'cursive'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 55),
              height: 50,
              width: 275,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 5,
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(0.2))
                ],
              ),
              child: const Icon(Icons.ice_skating),
            ),
            Container(
              margin: const EdgeInsets.only(top: 55),
              height: 50,
              width: 275,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: const Offset(0, 4),
                    color: Colors.black.withOpacity(0.2))
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 55),
              height: 50,
              width: 275,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: const Offset(0, 4),
                    color: Colors.black.withOpacity(0.2))
              ]),
            )
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints sizes) {
          if(sizes.maxWidth < 500){
            return const ListData();
          }
          return const GridData();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {

                return AlertDialog(
                    title: const Text("Example"),
                    content: const Text("Do you like this book?"),
                    actions: [
                      ElevatedButton(
                        child: const Text("Yes"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      ElevatedButton(
                        child: const Text("No"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),

                    ]);
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
class ListData extends StatelessWidget {
  const ListData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, id) {
          return ListTile(
            leading: const Icon(Icons.add_box),
            title: Text("Item $id"),
          );
        }
    );
  }
}
class GridData extends StatelessWidget {
  const GridData({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
      return Center(
          child: ListTile(
            leading: const Icon(Icons.add_box),
            title: Text("Item $index"),
              ),
       );
    }
    ));
  }
}
