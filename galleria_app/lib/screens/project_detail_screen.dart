// screens/project_detail_screen.dart
import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Icon(Icons.bookmark_border),
          SizedBox(width: 8),
          Icon(Icons.more_horiz),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปภาพโปรเจกต์
            Container(
              height: 250,
              color: Colors.grey[300],
              child: const Center(child: Text('Project Image')),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Geometric Harmony',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Studio Architectom • Berlin, Germany',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A minimalist approach to urban architecture that explores the relationship between geometric forms and natural light. The structure creates different experiences throughout the day as shadows shift across its surfaces.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Gallery',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // แถบรูปภาพ Gallery
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildGalleryImage('https://via.placeholder.com/150'),
                        _buildGalleryImage('https://via.placeholder.com/150'),
                        _buildGalleryImage('https://via.placeholder.com/150'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Materials',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // แถบ Materials
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildMaterialChip('Concrete'),
                      _buildMaterialChip('Steel'),
                      _buildMaterialChip('Wood'),
                      _buildMaterialChip('Glass'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper methods สำหรับสร้าง widget ย่อยๆ
Widget _buildGalleryImage(String imageUrl) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 120,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _buildMaterialChip(String label) {
  return Chip(
    label: Text(label),
    backgroundColor: Colors.grey[200],
  );
}