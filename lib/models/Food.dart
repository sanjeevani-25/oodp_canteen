// ignore_for_file: no_leading_underscores_for_local_identifiers

class Food {
  final int foodId;
  final int price;
  final String category;
  final String foodItem;
  final String imageURL;
  bool isFavorated;
  //final String description;
  bool isSelected;

  Food(
      {required this.foodId,
      required this.price,
      required this.category,
      required this.foodItem,
      required this.imageURL,
      required this.isFavorated,
      //required this.description,
      required this.isSelected});

  //List of Food data
  static List<Food> foodList = [
    Food(
        foodId: 0,
        price: 18,
        category: 'Lunch',
        foodItem: 'Pav Bhaji',
        imageURL: 'assets/images/pav bhaji new.png',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 1,
        price: 24,
        category: 'Snacks',
        foodItem: 'Dhokla',
        imageURL: 'assets/images/dhokla new.png',
        isFavorated: true,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 2,
        price: 22,
        category: 'Breakfast',
        foodItem: 'Alu Paratha',
        imageURL: 'assets/images/aloo paratha new.png',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 3,
        price: 23,
        category: 'Dinner',
        foodItem: 'Dosa',
        imageURL: 'assets/images/dosa new.png',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 4,
        price: 11,
        category: 'Breakfast',
        foodItem: 'Idli Sambhar',
        imageURL: 'assets/images/idli new.png',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 5,
        price: 30,
        category: 'Lunch',
        foodItem: 'Mix Veg',
        imageURL: 'assets/images/MixVeg.jpg',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 6,
        price: 24,
        category: 'Snacks',
        foodItem: 'Vada Pav',
        imageURL: 'assets/images/VadaPav.jpg',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 7,
        price: 19,
        category: 'Dinner',
        foodItem: 'Pav Bhaji',
        imageURL: 'assets/images/pav bhajiii.png',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
    Food(
        foodId: 8,
        price: 46,
        category: 'Dinner',
        foodItem: 'Dal Bati',
        imageURL: 'assets/images/DalBati.jpg',
        isFavorated: false,
        // description:
        // 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
        //     'even the harshest weather condition.',
        isSelected: false),
  ];

  //Get the favourited items
  static List<Food> getFavoritedFoods() {
    List<Food> _travelList = Food.foodList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Food> addedToCartFoods() {
    List<Food> _selectedPlants = Food.foodList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }

  
  static int priceofitem(int index){
    return foodList[index].price;
  }
}
