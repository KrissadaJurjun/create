import 'package:flutter/material.dart';
import 'project_detail_screen.dart';

// The main screen showing a grid of projects.
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I-BIT GALLERY'),
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
        'image': 'https://scontent.fbkk12-6.fna.fbcdn.net/v/t39.30808-6/509430474_1866758960786505_8350560371033300404_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeE08n8WDB5zu6B2-ByewI7qFzRIHz6z_mgXNEgfPrP-aFf-R5LVfph18XLvSlNx5ZdWZYRvwMFrT6umM2JrO7HW&_nc_ohc=X-SzCoA_RTsQ7kNvwFocgMX&_nc_oc=AdmHlMU9yBT3HqPsYx-yPkIfNQpkloXsP0If1n_XfNnsRhZt0kwSkgoFMEgj6-wunj-hrqkm7UIBAqkJrioCte_N&_nc_zt=23&_nc_ht=scontent.fbkk12-6.fna&_nc_gid=0CVBQx3lgiVDfbjAYCwRwA&oh=00_AfWq6Y9J_Q4VicfQCOMSLZhvBx7DRqnaOHSomgNnV45EfA&oe=68A028C6',
        'title': 'Krissada Jurjun',
        'subtitle': 'Genius Student',
      },
      {
        'image': 'https://scontent.fbkk8-2.fna.fbcdn.net/v/t1.6435-9/182772711_1282017338860547_1794917240537824345_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeEQECfcBiQCy92oi5nPsxa0XoPXMkFh1q1eg9cyQWHWrVW-oFDgHFsNx_0RcE69FusmQjSpIrhxhgqzhYuv9U_B&_nc_ohc=0XGkC5XVgC8Q7kNvwGBCkGg&_nc_oc=AdkmdrZt-R77yhG_ywOm4Sh9at6HP_uGKP8zisdxMf8XF1kv3PgEGzmBBlU0TVfvET0vpAimCZWvZNugH7xKm7PP&_nc_zt=23&_nc_ht=scontent.fbkk8-2.fna&_nc_gid=UN255V5EdD7CMMmZCdhVrA&oh=00_AfWi_MKZzJn6UpjFWAB9zxwkEboQsB8EmtdI19tIpYfinw&oe=68C1A203',
        'title': 'Nutthawit Morkkaew',
        'subtitle': 'Genius Programmer',
      },
      {
        'image': 'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/391654853_1698097070658543_5165441897896227362_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFoL26ajn0fu2niVW-XUX3CvgNllHu3T4q-A2WUe7dPivxe29cEKMkapAz-nJz95-Icgx56t47YKZh2WKrx1rD8&_nc_ohc=CJuDHn2M3ewQ7kNvwGdR0xk&_nc_oc=AdmwhYjGnon5uCoBJ-IZ8nA_5CytM4ho__vzUySrsEXr2NLOeFJE-h5s8SJQ1LiJqKpkx_VmaF4wTgOrvaq02YAf&_nc_zt=23&_nc_ht=scontent.fbkk12-3.fna&_nc_gid=X3i0pYdrs5a8ZuXrEhL2JQ&oh=00_AfVpVP89eHWqKbGcNEz5opn9vMjOtBKgv1hGPRsR1y4z4w&oe=68A03744',
        'title': 'Shuncey Tan Balba',
        'subtitle': 'Genius Programmer',
      },
      {
        'image': 'https://scontent.fbkk13-1.fna.fbcdn.net/v/t39.30808-1/486554803_1915607449268787_7219523213189300594_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeGBLXJkOyJIqiUQYPQUKPTnymsIRszGM0XKawhGzMYzRW30RwoAi_CelY_KifFL-fzLucGjyuroK494jxIW5zsq&_nc_ohc=FlfdVxi9CFMQ7kNvwG11YsP&_nc_oc=Adm2EAlEn8FF-e2I86fI4IzZ8Bg9CsNB--ga-ZWnPnCVf6Q0mBDv5RCM-k_NM4upAogBPyajdg1KTfnX5PxAxldk&_nc_zt=24&_nc_ht=scontent.fbkk13-1.fna&_nc_gid=cGO869nHGAKkqE96fBIvkQ&oh=00_AfXCchMuyj2-Mpir0NKPdQOeROcDMibYQ6bV9gk_0SBLMA&oe=68A02ADC',
        'title': 'Chatchawee Rajchaposri ',
        'subtitle': 'Genius UI Designer',
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
