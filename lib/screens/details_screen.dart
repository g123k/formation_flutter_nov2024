import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_colors.dart';
import 'package:flutter_application_1/res/app_icons.dart';
import 'package:flutter_application_1/res/app_images.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static const double IMAGE_HEIGHT = 300.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Image.network(
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=2510&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: IMAGE_HEIGHT,
              cacheWidth: MediaQuery.sizeOf(context).width.toInt(),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height + IMAGE_HEIGHT,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.0)),
                  color: Colors.white,
                ),
                margin: EdgeInsetsDirectional.only(
                  top: IMAGE_HEIGHT - 16.0,
                ),
                padding: EdgeInsetsDirectional.only(
                  top: 30.0,
                  start: 20.0,
                  end: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductHeader(),
                    ProductScores(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailsScreenStack extends StatelessWidget {
  const DetailsScreenStack({super.key});

  static const double IMAGE_HEIGHT = 300.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Image.network(
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=2510&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: IMAGE_HEIGHT,
              cacheWidth: MediaQuery.sizeOf(context).width.toInt(),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: IMAGE_HEIGHT - 16.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                color: Colors.white,
              ),
              padding: EdgeInsetsDirectional.only(
                top: 30.0,
                start: 20.0,
                end: 20.0,
              ),
              child: Column(
                children: [
                  ProductHeader(),
                  ProductScores(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Petits pois et carottes'),
        Text('Cassegrain'),
      ],
    );
  }
}

class ProductScores extends StatelessWidget {
  const ProductScores({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.gray1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 44,
                  child: ProductNutriScore(),
                ),
                VerticalDivider(),
                Expanded(
                  flex: 56,
                  child: ProductNovaScore(),
                ),
              ],
            ),
          ),
          Divider(),
          ProductEcoScore(),
        ],
      ),
    );
  }
}

class ProductNutriScore extends StatelessWidget {
  const ProductNutriScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nutri-Score'),
        Image.asset(
          AppImages.nutriscoreA,
          height: 100,
        ),
      ],
    );
  }
}

class ProductNovaScore extends StatelessWidget {
  const ProductNovaScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Groupe NOVA'),
        Text('Produits alimentaires et boissons…')
      ],
    );
  }
}

class ProductEcoScore extends StatelessWidget {
  const ProductEcoScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('EcoScore'),
        Icon(AppIcons.ecoscore_d),
      ],
    );
  }
}
