import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:leviathan/src/view/widget/container/shimmer_container.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.height,
    this.width,
    this.alignment = Alignment.center,
  });

  final String? imageUrl;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return imageUrl != null && imageUrl!.isNotEmpty
        ? CachedNetworkImage(
            key: key,
            imageUrl: imageUrl!,
            errorWidget: (context, url, response) => const SizedBox.shrink(),
            fit: fit,
            width: width,
            height: height,
            alignment: alignment,
            progressIndicatorBuilder: (context, url, progress) =>
                ShimmerContainer(
              height: height,
              width: width,
              padding: EdgeInsets.zero,
            ),
          )
        : const SizedBox.shrink();
  }
}

class CustomNetworkImageProvider extends CachedNetworkImageProvider {
  CustomNetworkImageProvider({required String url}) : super(url);
}
