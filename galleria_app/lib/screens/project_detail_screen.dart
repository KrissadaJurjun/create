import 'package:flutter/material.dart';

// Shows the details of a single project.
class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.bookmark_border, color: Colors.white, size: 28),
                onPressed: () {},
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1542361345-89e58247f2d5?w=800',
                fit: BoxFit.cover,
                 color: Colors.black.withOpacity(0.3),
                 colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Geometric Harmony',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Text('2022', style: TextStyle(fontWeight: FontWeight.bold))
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Studio Archform • Berlin, Germany',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'A minimalist approach to urban architecture that explores the relationship between geometric forms and natural light. The structure creates different experiences throughout the day as shadows shift across its surfaces.',
                    style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
                  ),
                  const SizedBox(height: 32),
                  const Text('Gallery', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildGalleryImage('https://images.unsplash.com/photo-1542361345-89e58247f2d5?w=300'),
                        _buildGalleryImage('https://images.unsplash.com/photo-1617082382955-23a0494a11a8?w=300'),
                        _buildGalleryImage('https://images.unsplash.com/photo-1581351639913-c9769344b261?w=300'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text('Materials', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMaterialItem(Icons.layers, 'Concrete'),
                      _buildMaterialItem(Icons.view_in_ar, 'Steel'),
                      _buildMaterialItem(Icons.forest, 'Wood'),
                      _buildMaterialItem(Icons.grid_on, 'Glass'),
                    ],
                  ),
                   const SizedBox(height: 32),
                   const Text('Designer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                   const SizedBox(height: 16),
                   _buildDesignerCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGalleryImage(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(url, width: 100, height: 100, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildMaterialItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade100,
          child: Icon(icon, color: Colors.black, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }

   Widget _buildDesignerCard() {
    return Card(
      elevation: 0,
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1580489944761-15a19d654956?w=100'),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sarah Lindemann', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('Architect & Designer', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Follow', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}