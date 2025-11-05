import 'package:flutter/material.dart';
import '../models/business_model.dart';
import 'business_detail_screen.dart';

class BusinessListScreen extends StatelessWidget {
  BusinessListScreen({super.key});

  final List<Business> businesses = [
    Business(
      id: '1',
      name: 'Flutter Devs',
      description: 'Top-notch Flutter development services.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Business(
      id: '2',
      name: 'AI Innovators',
      description: 'Cutting-edge AI solutions for your business.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Business(
      id: '3',
      name: 'Creative Designs',
      description: 'Beautiful and functional designs.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Businesses'),
      ),
      body: ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(businesses[i].imageUrl),
          ),
          title: Text(businesses[i].name),
          subtitle: Text(businesses[i].description),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BusinessDetailScreen(business: businesses[i]),
              ),
            );
          },
        ),
      ),
    );
  }
}
