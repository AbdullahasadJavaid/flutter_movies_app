class Movies {
  String id;
  final String Imageurl;
  final String name;
  final String description;
  final double rating;

  Movies(
      {required this.id,
      required this.Imageurl,
      required this.name,
      required this.description,
      required this.rating});
}

List<Movies> movielist = [
  Movies(
    id: '1',
    Imageurl:
        "https://talkiescorner.com/wp-content/uploads/2023/06/Extraction-2.webp",
    name: "Extraction 2",
    description:
        "In the film, Tyler Rake (Hemsworth) is initially hired to rescue the family of an abusive crime lord from a Georgian prison. Extraction 2 was released by Netflix on 16 June 2023 and received highly positive reviews from critics.",
    rating: 6.5,
  ),
  Movies(
    id: '2',
    Imageurl: "https://wallpapercave.com/wp/wp1847752.jpg",
    name: "Mission: Impossible Fallout",
    description:
        "Ethan Hunt (played by Tom Cruise) and the IMF team join forces with CIA assassin August Walker to prevent a disaster of epic proportions. Arms dealer John Lark and a group of terrorists, known as the Apostles conspire to use three plutonium cores for a simultaneous nuclear attack on the Vatican, Jerusalem, and Mecca.",
    rating: 7.2,
  ),
  Movies(
      id: '3',
      Imageurl: 'https://images7.alphacoders.com/131/1314905.jpeg',
      name: 'Oppenheimer',
      description:
          'J. Robert Oppenheimer (1904-1967) was an American theoretical physicist. During the Manhattan Project, Oppenheimer was director of the Los Alamos Laboratory and responsible for the research and design of an atomic bomb. He is often known as the “father of the atomic bomb.”',
      rating: 4.5),
  Movies(
    id: '4',
    Imageurl:
        "https://m.media-amazon.com/images/M/MV5BODU0MmZjYjktOGQ4MS00N2QwLTk5MzQtYTRkMGRiM2Q4ZjViXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_QL75_UX380_CR0,0,380,562_.jpg",
    name: "Tom Clancy's Jack Ryan",
    description:
        "The son of a Baltimore police detective and a nurse, Ryan is a former U.S. Marine and stockbroker who becomes a civilian history professor at the United States Naval Academy (USNA). Ryan joins the Central Intelligence Agency (CIA) as an analyst and occasional field officer, eventually leading it as Deputy Director.",
    rating: 5.5,
  ),
  Movies(
    id: '5',
    Imageurl: "https://picfiles.alphacoders.com/223/thumb-223732.jpg",
    name: "The Marvelous Mrs. Maisel",
    description:
        "Premise. Season 1: In 1958 New York City, Miriam 'Midge' Maisel, a young, affluent Jewish-American housewife, embarks on a stand-up comedy career after husband Joel, an untalented amateur comic, abruptly leaves her following his dismal set at The Gaslight Café.",
    rating: 7.5,
  ),
  Movies(
    id: '6',
    Imageurl:
        "https://resizing.flixster.com/rp2j5lcMPnboBxN0CuRftTDaH_E=/300x300/v2/https://flxt.tmsimg.com/assets/p24531823_v_h8_ac.jpg",
    name: "My Fault",
    description:
        "My Fault focuses on Noah, a young woman who moves into a mansion with her mother, Rafaella, and her new billionaire husband. Amid this change, she finds herself navigating a potential conflict-fuelled romance with her stepbrother Nick. It is based on the eponymous best-selling novel by Argentine writer, Mercedes Ron.",
    rating: 3.4,
  ),
];
