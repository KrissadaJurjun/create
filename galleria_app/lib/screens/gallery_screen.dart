import 'package:flutter/material.dart';
import 'project_detail_screen.dart';

// The main screen showing a grid of projects.
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GALLERIA'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _buildCategoryFilter(),
              const SizedBox(height: 20),
              _buildGalleryGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryFilter() {
    final categories = ['All', 'Architecture', 'Interior', 'Art'];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = index == 1; // 'Architecture' is selected in the image
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: isSelected ? Colors.black : Colors.grey.shade100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGalleryGrid(BuildContext context) {
    // Dummy data for the grid
    final List<Map<String, String>> galleryItems = [
      {
        'image': 'https://images.unsplash.com/photo-1542361345-89e58247f2d5?w=500',
        'title': 'Geometric Harmony',
        'subtitle': 'Studio Archform',
      },
      {
        'image': 'https://images.unsplash.com/photo-1512819432649-16d8a82422d5?w=500',
        'title': 'Minimal Interior',
        'subtitle': 'Design Collective',
      },
      {
        'image': 'https://images.unsplash.com/photo-1448375240586-882707db888b?w=500',
        'title': 'Light & Shadow',
        'subtitle': 'Elena Cortez',
      },
      {
        'image': 'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?w=500',
        'title': 'Urban Perspectives',
        'subtitle': 'Metro Architects',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: galleryItems.length,
      itemBuilder: (context, index) {
        final item = galleryItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ProjectDetailScreen()),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    item['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(item['subtitle']!, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        );
      },
    );
  }
}
