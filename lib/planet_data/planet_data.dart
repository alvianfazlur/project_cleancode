class PlanetData {
  String name;
  String data;
  String image;
  String mass;
  String radius;
  String orbitalPeriod;

  PlanetData(
      {
        required this.data,
        required this.name,
        required this.image,
        required this.mass,
        required this.orbitalPeriod,
        required this.radius
      });
}
final List<PlanetData> planetlist =[
  PlanetData(
      name: 'Mercury',
      data:
      'Mercury is the smallest and innermost planet in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      image: 'assets/images/1mercury.png',
      mass: '3.285 × 10^23 kg',
      radius: '2,439.7 km',
      orbitalPeriod: '88 days'
  ),
  PlanetData(
      name: 'Venus',
      data:
      'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky after the Moon.',
      image: 'assets/images/2venus.png',
      orbitalPeriod: '225 days',
      radius: '6,051.8 km',
      mass: '4.867 × 10^24 kg'
  ),
  PlanetData(
      name: 'Earth',
      data:
      'Earth is the third planet from the Sun and the only astronomical object known to harbor life.',
      image: 'assets/images/3earth.png',
      mass: '5.972 × 10^24 kg',
      radius: '6,371 km',
      orbitalPeriod: '365.25 days'
  ),
  PlanetData(
      name: 'Mars',
      data:
      'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being only larger than Mercury.',
      image: 'assets/images/4mars.png',
      orbitalPeriod: '687 days',
      radius: '3,389.5 km',
      mass: '6.39 × 10^23 kg'
  ),
  PlanetData(
      name: 'Jupiter',
      data:
      'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun.',
      image: 'assets/images/5jupiter.png',
      mass: '1.898 × 10^27 kg',
      radius: '69,911 km',
      orbitalPeriod: '12 years'
  ),
  PlanetData(
      name: 'Saturn',
      data:
      'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.',
      image: 'assets/images/6saturn.png',
      mass: '5.683 × 10^26 kg',
      radius: '58,232 km',
      orbitalPeriod: '29 years'
  ),
  PlanetData(
      name: 'Uranus',
      data:
      'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.',
      image: 'assets/images/7uranus.png',
      radius: '25,362 km',
      orbitalPeriod: '84 years',
      mass: '8.681 × 10^25 kg'
  ),
  PlanetData(
      name: 'Neptune',
      data:
      'Neptune is the eighth and farthest known planet from the Sun in the Solar System.',
      image: 'assets/images/8neptune.png',
      radius: '24,622 km',
      orbitalPeriod: '165 years',
      mass: '1.024 × 10^26 kg'
  ),
];