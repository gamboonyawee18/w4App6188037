class Pet {
  final int price;
  final String id, title, description, image;

  Pet({this.id, this.price, this.title, this.description, this.image});
}

// list of Pets
// for our demo
List<Pet> Pets = [
  Pet(
    id: 'Cor01',
    price: 16000,
    title: "Corgi",
    image: "./assets/images/Corgi.jpg",
    description:
      "",
  ),
  Pet(
    id: 'Poo01',
    price: 6500,
    title: "Poodle",
    image: "assets/images/Poodle.jpg",
    description:
    "",
  ),
  Pet(
    id: 'Sam01',
    price: 120000,
    title: "Samoyed",
    image: "assets/images/Samoyed.jpg",
    description:
    "",
  ),
  Pet(
    id: 'Gol01',
    price: 7000,
    title: "Golden Retriever",
    image: "assets/images/GoldenRetriever.jpg",
    description:
    "",
  ),
  Pet(
    id: 'Cha01',
    price: 40000,
    title: "Chao Chao",
    image: "assets/images/ChaoChao.jpg",
    description:
    "",
  ),
];
