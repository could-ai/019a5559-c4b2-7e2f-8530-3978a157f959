import 'package:flutter/material.dart';
import '../models/business_model.dart';

class BusinessDetailScreen extends StatelessWidget {
  final Business business;

  const BusinessDetailScreen({super.key, required this.business});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(business.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(business.imageUrl),
            const SizedBox(height: 16),
            Text(
              business.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              business.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Marketplace Interaction',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.photo_camera),
                  onPressed: () {
                    // TODO: Implement photo upload
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mic),
                  onPressed: () {
                    // TODO: Implement audio recording
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.videocam),
                  onPressed: () {
                    // TODO: Implement video recording
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
