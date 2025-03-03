import 'package:flutter/material.dart';
import '../screens/memory_detail_screen.dart';
import '../screens/add_memory_screen.dart';
import '../widgets/live_photo_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diário de Memórias')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 10, // Aqui deve ser substituído pela quantidade real de fotos
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemoryDetailScreen()),
                );
              },
              child: LivePhotoWidget(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMemoryScreen()),
          );
        },
      ),
    );
  }
}