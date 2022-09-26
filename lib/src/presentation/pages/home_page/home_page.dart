import 'package:blobs/blobs.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/src/presentation/app/constants/dimensions.dart';
import 'package:portfolio/src/presentation/app/theme/colors.dart';
import 'package:portfolio/src/presentation/pages/home_page/widgets/landscape_mode_widgets.dart';
import 'package:portfolio/src/presentation/pages/home_page/widgets/portrait_mode_widgets.dart';
import 'package:portfolio/src/presentation/widgets/blob_animated_random.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: StaggeredGrid.count(
            crossAxisCount: MediaQuery.of(context).orientation.name == 'portrait' ? 2 : 4,
            mainAxisSpacing: MediaQuery.of(context).orientation.name == 'portrait' ? 1 : 3,
            crossAxisSpacing: MediaQuery.of(context).orientation.name == 'portrait' ? 4 : 5,
            children: const [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: BlobAnimatedRandom(),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: BlobAnimatedRandom(),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: BlobAnimatedRandom(),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: BlobAnimatedRandom(),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: BlobAnimatedRandom(),
              ),
            ],
          ),
        ),
        Center(
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(roundCornerRadius),
                side: const BorderSide(
                  color: PortfolioColors.primaryColor,
                ),
              ),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                  child: MediaQuery.of(context).orientation.name == 'portrait'
                      ? const PortraitModeWidget()
                      : const LandscapeModeWidget())),
        ),
      ]),
    );
  }
}
