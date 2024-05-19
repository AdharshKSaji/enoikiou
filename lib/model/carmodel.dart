class CarModel {
  final String title;
  final String description;
  String image;
  final String review;
  final String price; // Corrected to String type
  final String category;

  CarModel({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
  });
}
final List<CarModel> electricCars = [
  CarModel(
    title: "Tesla Model 3",
    description: "An all-electric sedan by Tesla, offering a balance of performance, range, and affordability.",
    image: "images/tesla_model_3.jpg",
    price: "39999",
    category: "Electric",
    review: "(500 Reviews)",
  ),
  CarModel(
    title: "Nissan Leaf",
    description: "A compact five-door hatchback electric car manufactured by Nissan.",
    image: "images/nissan_leaf.jpg",
    price: "29999",
    category: "Electric",
    review: "(250 Reviews)",
  ),
  CarModel(
    title: "Chevrolet Bolt EV",
    description: "An all-electric subcompact hatchback produced by Chevrolet.",
    image: "images/chevrolet_bolt_ev.jpg",
    price: "36999",
    category: "Electric",
    review: "(180 Reviews)",
  ),
  CarModel(
    title: "BMW i3",
    description: "A B-segment, high-roof hatchback manufactured and marketed by BMW.",
    image: "images/bmw_i3.jpg",
    price: "44999",
    category: "Electric",
    review: "(140 Reviews)",
  ),
  CarModel(
    title: "Hyundai Kona Electric",
    description: "A subcompact five-door crossover SUV produced by Hyundai, available in an all-electric variant.",
    image: "images/hyundai_kona_electric.jpg",
    price: "37999",
    category: "Electric",
    review: "(120 Reviews)",
  ),
];

final List<CarModel> luxuryCars = [
  CarModel(
    title: "Lexus LS",
    description: "A full-size luxury sedan serving as the flagship model of Lexus, the luxury division of Toyota.",
    image: "images/lexus_ls.jpg",
    price: "75999",
    category: "Luxury",
    review: "(110 Reviews)",
  ),
  CarModel(
    title: "Jaguar XJ",
    description: "A full-size luxury sedan manufactured by British automobile manufacturer Jaguar.",
    image: "images/jaguar_xj.jpg",
    price: "79999",
    category: "Luxury",
    review: "(95 Reviews)",
  ),
  CarModel(
    title: "Cadillac CT6",
    description: "A full-size luxury sedan manufactured by Cadillac.",
    image: "images/cadillac_ct6.jpg",
    price: "72999",
    category: "Luxury",
    review: "(130 Reviews)",
  ),
  CarModel(
    title: "Genesis G90",
    description: "A full-size luxury sedan marketed by Genesis, the luxury division of Hyundai.",
    image: "images/genesis_g90.jpg",
    price: "69999",
    category: "Luxury",
    review: "(85 Reviews)",
  ),
  CarModel(
    title: "Maserati Quattroporte",
    description: "A four-door full-size luxury sports sedan produced by Italian car manufacturer Maserati.",
    image: "images/maserati_quattroporte.jpg",
    price: "89999",
    category: "Luxury",
    review: "(75 Reviews)",
  ),
];

final List<CarModel> sportsCars = [
  CarModel(
    title: "Ferrari 488",
    description: "A mid-engine sports car produced by the Italian automobile manufacturer Ferrari.",
    image: "images/ferrari_488.jpg",
    price: "280000",
    category: "Sports",
    review: "(55 Reviews)",
  ),
  CarModel(
    title: "Lamborghini Huracan",
    description: "A sports car built by Lamborghini replacing the previous V10 flagship, the Gallardo.",
    image: "images/lamborghini_huracan.jpg",
    price: "250000",
    category: "Sports",
    review: "(65 Reviews)",
  ),
  CarModel(
    title: "McLaren 720S",
    description: "A sports car designed and manufactured by British automobile manufacturer McLaren Automotive.",
    image: "images/mclaren_720s.jpg",
    price: "299000",
    category: "Sports",
    review: "(45 Reviews)",
  ),
  CarModel(
    title: "Aston Martin DB11",
    description: "A grand tourer produced by British luxury car manufacturer Aston Martin.",
    image: "images/aston_martin_db11.jpg",
    price: "235000",
    category: "Sports",
    review: "(80 Reviews)",
  ),
  CarModel(
    title: "Porsche 718 Cayman",
    description: "A mid-engine two-seater sports car built by Porsche.",
    image: "images/porsche_718_cayman.jpg",
    price: "60000",
    category: "Sports",
    review: "(120 Reviews)",
  ),
];

final List<CarModel> suvCars = [
  CarModel(
    title: "Range Rover",
    description: "A full-size luxury sport utility vehicle (SUV) produced by Land Rover.",
    image: "images/range_rover.jpg",
    price: "90000",
    category: "SUV",
    review: "(200 Reviews)",
  ),
  CarModel(
    title: "Toyota Land Cruiser",
    description: "A series of four-wheel drive vehicles produced by the Japanese car maker Toyota.",
    image: "images/toyota_land_cruiser.jpg",
    price: "85000",
    category: "SUV",
    review: "(190 Reviews)",
  ),
  CarModel(
    title: "Ford Explorer",
    description: "A range of SUVs manufactured by Ford Motor Company.",
    image: "images/ford_explorer.jpg",
    price: "45000",
    category: "SUV",
    review: "(210 Reviews)",
  ),
  CarModel(
    title: "Chevrolet Tahoe",
    description: "A full-size SUV from Chevrolet.",
    image: "images/chevrolet_tahoe.jpg",
    price: "60000",
    category: "SUV",
    review: "(170 Reviews)",
  ),
  CarModel(
    title: "Honda CR-V",
    description: "A compact crossover SUV manufactured by Honda.",
    image: "images/honda_crv.jpg",
    price: "30000",
    category: "SUV",
    review: "(230 Reviews)",
  ),
];

final List<CarModel> sedanCars = [
  CarModel(
    title: "Toyota Avalon",
    description: "A full-size car produced by Toyota.",
    image: "images/toyota_avalon.jpg",
    price: "35000",
    category: "Sedan",
    review: "(180 Reviews)",
  ),
  CarModel(
    title: "Nissan Maxima",
    description: "A full-size/ executive car manufactured by Nissan.",
    image: "images/nissan_maxima.jpg",
    price: "37000",
    category: "Sedan",
    review: "(160 Reviews)",
  ),
  CarModel(
    title: "Hyundai Sonata",
    description: "A mid-size car produced by the South Korean manufacturer Hyundai.",
    image: "images/hyundai_sonata.jpg",
    price: "25000",
    category: "Sedan",
    review: "(200 Reviews)",
  ),
  CarModel(
    title: "Kia Optima",
    description: "A mid-size car manufactured by Kia Motors.",
    image: "images/kia_optima.jpg",
    price: "23000",
    category: "Sedan",
    review: "(190 Reviews)",
  ),
  CarModel(
    title: "Mazda 6",
    description: "A mid-size/large family car produced by Mazda.",
    image: "images/mazda_6.jpg",
    price: "27000",
    category: "Sedan",
    review: "(220 Reviews)",
  ),
];
