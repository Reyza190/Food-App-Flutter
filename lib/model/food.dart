class Food {
  String name;
  String type;
  double rating;
  String description;
  String image;
  int price;
  List<String> bundleImage;

  Food({
    required this.name,
    required this.type,
    required this.rating,
    required this.description,
    required this.image,
    required this.price,
    required this.bundleImage,
  });
}

var foodList = [
    Food(
        name: 'Pempek',
        type: 'Meal',
        rating: 4.8,
        description:
            'Pempek adalah makanan yang dibuat dari daging ikan yang digiling lembut yang dicampur tepung kanji atau tepung sagu',
        image: 'https://i0.wp.com/cakesusumoo.com/wp-content/uploads/2020/07/Resep-Dan-Cara-Membuat-Pempek-Sederhana-Bonus-2-Tips-Dan-Trik.jpg?resize=1600%2C1200&s',
        price: 5000,
        bundleImage: [
          'https://radarmukomuko.disway.id/upload/488f23350713f10b03c79332b6afe1de.jpg',
          'https://nibble-images.b-cdn.net/nibble/original_images/pempek_paling_enak_di_jakarta_00_6822572595_fnDbRp3RP.jpg',
          'https://www.generasimaju.co.id/articles/article/Pempek%20Palembang.jpg'
        ]
    ),

     Food(
        name: 'Sate',
        type: 'Meat',
        rating: 4.8,
        description:
            'Sate (Jawa: ꦱꦠꦺ, translit. sate, KBBI: satai) adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu',
        image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Sate_Ponorogo.jpg/220px-Sate_Ponorogo.jpg',
        price: 15000,
        bundleImage: [
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Horse_Satay%2C_Yogyakarta.jpg/170px-Horse_Satay%2C_Yogyakarta.jpg',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Nasi_Campur_Bali_Sate_Lilit.jpg/170px-Nasi_Campur_Bali_Sate_Lilit.jpg',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cooking_Chicken_Satay.jpg/170px-Cooking_Chicken_Satay.jpg'
        ]
    ),

    Food(
        name: 'Tahu Bulat',
        type: 'Meal',
        rating: 4.8,
        description:
            'Tahu bulat adalah sebuah jajanan kaki lima berupa olahan kacang kedelai yang dibuat menjadi sebuah tahu berbentuk bulat dengan isi kopong.',
        image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/TAHU_BULAT.jpg/250px-TAHU_BULAT.jpg',
        price: 500,
        bundleImage: [
          'https://cdn0-production-images-kly.akamaized.net/Ab9EWk5I0ADCF5nzjhqU8ltfJLI=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2227920/original/038289800_1527241769-resep-cara-membuat-tahu-bulat-pedas.jpg',
          'https://cdn1.katadata.co.id/media/images/thumb/2022/03/17/2022_03_17-20_26_09_08f20ae7891a3f2cd05b022e15fc100c_960x640_thumb.jpg',
          'https://cdn1-production-images-kly.akamaized.net/KvlLVMnrraUQWZOiLkERsKz7qww=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3320398/original/017529400_1607584571-800px-Tahu_Bulat.jpg'
        ]
    ),
  ];
