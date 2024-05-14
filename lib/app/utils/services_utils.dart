class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Designet Web Agency | Stage Pfe',
    icon: 'assets/icons/website.svg',
    description:
        "•Créer une site web pour aide étudiantes pour présenter votre projets.\n• Maîtriser la Framework Angular.",
    tool: ['Du Fév. 2022 au Juin. 2022', 'Menzel Temim-Nabeul'],
  ),
  ServicesUtils(
    name: 'IDCII Stage de perfectionnement',
    icon: 'assets/icons/website.svg',
    description:
        "• Création site web.\n• Intégrer un template XD.\n• Création logo, affiche, flyer. \n• Commercialiser un produit.",
    tool: ['Du Juil. 2021 au Aout.2021', 'Hammem Lif-Ben Arous'],
  ),
  ServicesUtils(
    name: 'Siége STB | Stage de initiation',
    icon: 'assets/icons/website.svg',
    description:
        "•Etudier les différentes imprimantes et les scanner, la configuration de l'unité centrale (types, composant, configurations, types de panne...).\n•Étudier quelques types de serveur.",
    tool: ['Du Jan. 2020 au Fev. 2020', 'Tunis-Tunis'],
  ),
];
