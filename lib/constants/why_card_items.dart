class WhyCardItems {
  final String image;
  final String title;
  final String subtitle;
  WhyCardItems({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<WhyCardItems> why_card_items = [
  WhyCardItems(
    image: "assets/discount.png",
    title: "Special Trade-Up Discounts",
    subtitle: "Save more when you upgrade through us",
  ),
  WhyCardItems(
    image: "assets/support.png",
    title: "Personalized Support",
    subtitle: "Our in-store specialists ensure you find the perfect fit",
  ),
  WhyCardItems(
    image: "assets/fast.png",
    title: "Fast Process",
    subtitle: "No shipping delays—just immediate action",
  ),
];
