import 'package:flutter/material.dart';

// Shows the profile of a designer or artist.
class ArtistProfileScreen extends StatelessWidget {
  const ArtistProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
            // This might pop the whole MainScreen if it's the root of the navigator.
            // A more robust solution would use a nested navigator.
            if(Navigator.canPop(context)) Navigator.pop(context);
          }),
          title: const Text('Profile'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1580489944761-15a19d654956?w=200'),
                      ),
                      const SizedBox(height: 16),
                      const Text('Sarah Lindemann', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      const Text('Architect & Designer', style: TextStyle(color: Colors.grey, fontSize: 16)),
                      const SizedBox(height: 16),
                      const Text(
                        'Creating spaces that blend minimalism with functionality. Based in Berlin, working globally.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, height: 1.4),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StatItem(count: '42', label: 'Projects'),
                          StatItem(count: '15', label: 'Years'),
                          StatItem(count: '8', label: 'Awards'),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              child: const Text('Follow', style: TextStyle(color: Colors.white, fontSize: 16)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                               style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              child: const Text('Message', style: TextStyle(color: Colors.black, fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(text: 'Projects'),
                  Tab(text: 'About'),
                  Tab(text: 'Reviews'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildProfileProjectsGrid(),
                    const Center(child: Text('About Content')),
                    const Center(child: Text('Reviews Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileProjectsGrid() {
    final List<Map<String, String>> projectItems = [
      {
        'image': 'https://images.unsplash.com/photo-1542361345-89e58247f2d5?w=500',
        'title': 'Geometric Harmony',
        'subtitle': 'Berlin, 2022',
      },
      {
        'image': 'https://images.unsplash.com/photo-1511252542261-995383c065a5?w=500',
        'title': 'Glass House',
        'subtitle': 'Copenhagen, 2021',
      },
       {
        'image': 'https://images.unsplash.com/photo-1558969548-68d49e7a4b91?w=500',
        'title': 'Coastal Retreat',
        'subtitle': 'Lisbon, 2020',
      },
      {
        'image': 'https://images.unsplash.com/photo-1598901720977-33665383573e?w=500',
        'title': 'The Monolith',
        'subtitle': 'Oslo, 2019',
      },
    ];

     return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: projectItems.length,
      itemBuilder: (context, index) {
        final item = projectItems[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  item['image']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(item['subtitle']!, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        );
      },
    );
  }
}

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
