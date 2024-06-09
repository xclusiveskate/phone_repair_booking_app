extension ImageExtension on String {
  //Image and Icons Extensions
  String get pngImage => "assets/images/$this.png";
  String get jpgImage => "assets/images/$this.jpg";
  String get svgImage => "assets/images/$this.svg";
  String get svgIcon => "assets/icons/$this.svg";

//asset  Image and Icons extensions returning SvgPicture
  // get svgAssetPngImage => SvgPicture.asset("assets/images/$this.png");
  // get svgAssetJpgImage => SvgPicture.asset("assets/images/$this.jpg");
  // get svgAssetSvgImage => SvgPicture.asset("assets/images/$this.svg");

  //extension to
}
