import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_colors.dart';
import 'package:flutter_application_1/res/app_icons.dart';
import 'package:flutter_application_1/res/app_vectorial_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

/// Avec Flex
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes scans'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 7.0),
              child: Icon(AppIcons.barcode),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 20),
            SvgPicture.asset(AppVectorialImages.illEmpty),
            Spacer(flex: 12),
            Text('Vous n\'avez pas encore scanné de produit'),
            Spacer(flex: 8),
            TextButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.blue,
                backgroundColor: AppColors.yellow,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
              ),
              onPressed: () {
                GoRouter.of(context).push('/details');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Commencer'.toUpperCase()),
                  const SizedBox(width: 10.0),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
            Spacer(flex: 20),
          ],
        ),
      ),
    );
  }
}

/// Avec LayoutBuilder + FittedBox
class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes scans'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 7.0),
              child: Icon(AppIcons.barcode),
            ),
          ),
        ],
      ),
      body: Center(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return FittedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppVectorialImages.illEmpty),
                SizedBox(height: constraints.maxHeight * 0.15),
                Text('Vous n\'avez pas encore scanné de produit'),
                SizedBox(height: constraints.maxHeight * 0.1),
                TextButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.blue,
                    backgroundColor: AppColors.yellow,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(22.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Commencer'.toUpperCase()),
                      const SizedBox(width: 10.0),
                      Icon(Icons.arrow_right_alt),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FittedBox(
        child: Text(
          'Hello world',
          style: TextStyle(fontSize: 1000),
        ),
      ),
    );
  }
}
