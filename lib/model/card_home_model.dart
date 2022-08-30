class CardHome {
  final String image;
  final String title;
  final String subtitle;
  final String infotitle;
  final bool favorite;

  CardHome({
    this.favorite = false,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.infotitle,
  });
}
