class HowUtils {
  final String image;
  final String title;
  final String subtitle;
  HowUtils({required this.image, required this.title, required this.subtitle});
}

// ignore: non_constant_identifier_names
List<HowUtils> how_var = [
  HowUtils(
    image: "assets/how_1.jpg",
    title: "Visit Your Nearest Apex Value Store",
    subtitle:
        "Bring your old device to one of our locations\nfor a quick evaluation.",
  ),
  HowUtils(
    image: "assets/how_2.jpg",
    title: "Get an Instant Trade-In Offer",
    subtitle:
        "Our experts will assess your device and\nprovide you with a competitive trade-in value.",
  ),
  HowUtils(
    image: "assets/how_3.jpg",
    title: "Explore the Latest Tech",
    subtitle:
        "Apply your trade-in value towards the\npurchase of a brand-new device, available\nexclusively at Apex Value.",
  ),
  HowUtils(
    image: "assets/how_4.png",
    title: "Upgrade Instantly",
    subtitle:
        "Walk out with your new device the same\nday—simple, fast, and hassle-free!",
  ),
];
