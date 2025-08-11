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
                icon: const Icon(Icons.bookmark_border, color: Color.fromARGB(255, 85, 80, 214), size: 28),
                onPressed: () {},
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tripadvisor.com%2FAttraction_Review-g297922-d552838-Reviews-Hua_Hin_Beach-Hua_Hin_Prachuap_Khiri_Khan_Province.html&psig=AOvVaw3gKopkA12RWcx6_lKUqOQA&ust=1755028795181000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCJCZ9_DFg48DFQAAAAAdAAAAABAE',
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
                          'Krissada Jurjun',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Text('2025', style: TextStyle(fontWeight: FontWeight.bold))
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
                    'International Day @ TNI  A Global Celebration Like No Other!',
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
                        _buildGalleryImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tripadvisor.com%2FAttraction_Review-g297922-d552838-Reviews-Hua_Hin_Beach-Hua_Hin_Prachuap_Khiri_Khan_Province.html&psig=AOvVaw3gKopkA12RWcx6_lKUqOQA&ust=1755028795181000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCJCZ9_DFg48DFQAAAAAdAAAAABAE'),
                        _buildGalleryImage('https://scontent.fbkk12-1.fna.fbcdn.net/v/t39.30808-6/487446306_1185946366654713_8559430000608800437_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeG82xJqASv_xVtpdYI-MXj7VpHDDj9yol1WkcMOP3KiXfbPuZLyFVd89ejas_19s1Nk3-ndNYMDY99k1Szr5rn-&_nc_ohc=mIEsFzdCxy8Q7kNvwGZK-ig&_nc_oc=AdnYte4BRB6e4fCqFJtd6ftWRLz9qnD1MLiyx-Dy4NZAXaaFTTzHMcSXB1x2aIu2oz2FolmnsXSihgEUn1RkyLod&_nc_zt=23&_nc_ht=scontent.fbkk12-1.fna&_nc_gid=nAOf13gDxFtQUDAb2nc-mw&oh=00_AfWqiAmoDZoE9k2L36tuLlnqHOCleyrxXw_XVn5ExQqpyw&oe=68A019DB'),
                        _buildGalleryImage('https://scontent.fbkk12-2.fna.fbcdn.net/v/t39.30808-6/487314596_1185945009988182_3060108054245027918_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGYyWY12uMAITN5iznUK0mgKmgVzdHeFG8qaBXN0d4Ub7REsJ0WmVYqG5_n-lgioQZEWjA-Z8Rafyu56VCpKpDv&_nc_ohc=izSlXPPUgwkQ7kNvwGxYen0&_nc_oc=AdmVJMbWiYyLZwGdpDra_4t0RT9b-O6GEyChn7Fcu8HfWaI6aXvbdFygtlFR3-3v8JiVEPl6DoBjnbyRbJLb5EH0&_nc_zt=23&_nc_ht=scontent.fbkk12-2.fna&_nc_gid=f1fKHmLAZA5u5_Bw8pIfqA&oh=00_AfVKeffBj2qA-redMKFDSpNgZOAjhs1K9HMOBxQgErCKQg&oe=68A02C88'),
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
                   const Text('Students', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
              backgroundImage: NetworkImage('https://scontent.fbkk13-1.fna.fbcdn.net/v/t1.6435-9/82053717_2996434983702868_6921380874571218944_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeG6JM7tasaiU95w-Gw-VhFUyrGMQD4QRNnKsYxAPhBE2TtvRZqMDsvumMVfcHimp_7yYLx5xf4Yuj3V46rE_39p&_nc_ohc=wG2TJnthcwMQ7kNvwGp0f40&_nc_oc=AdmsmUMg-3B35xV5CvAEzL7L-wzNnbGLt4uwvwpOwG6JfPLFlmxiRqjruyR59efrW2Vw5C5SZ-UqD4VnI1xEU8a_&_nc_zt=23&_nc_ht=scontent.fbkk13-1.fna&_nc_gid=JtL9lFFPZyHdkSumO0EtUw&oh=00_AfVw_htgmcWsKslGOn8jWBp_ZCzodoBPJI4hiAkIIVBj5w&oe=68C1CFF4'),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mr.Tongpool Heeptaisong อาจารย์ต้นโพธิ์ของเรา', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('Expert IT Professor', style: TextStyle(color: Colors.grey)),
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