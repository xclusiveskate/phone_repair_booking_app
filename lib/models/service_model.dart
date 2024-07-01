import 'package:repair_app/extensions/string_extension.dart';

class ServiceDesignModel {
  final String title;
  final String content;
  final String image;
  ServiceDesignModel({
    required this.title,
    required this.content,
    required this.image,
  });
}

List<ServiceDesignModel> serviceItems = [
  ServiceDesignModel(
    title: "Laptops",
    content:
        "Skilled technicians, fast turnaround. Cracked screens, keyboard replacements, and more. Get your laptop back to peak performance",
    image: "laptopicon".svgImage,
  ),
  ServiceDesignModel(
    title: "Consoles",
    content:
        "Gaming console experts at your service. Quick fixes for uninterrupted gaming.",
    image: "consoleicon".svgImage,
  ),
  ServiceDesignModel(
    title: "Phones/Tabs",
    content:
        "Cracked screens, battery replacements, software issues, and more. Our experts fix it all, fast. Trust us with your device's repair needs",
    image: "phoneicon".svgImage,
  ),
  ServiceDesignModel(
    title: "Other Gadgets",
    content:
        " Skilled technicians, fast turnaround. Cracked screens, keyboard replacements, and more. Get your gagets back to peak performance.",
    image: "othericon".svgImage,
  )
];
