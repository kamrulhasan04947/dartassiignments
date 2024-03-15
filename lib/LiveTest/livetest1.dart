//Problem:

/*Consider a Dart program managing a list of fruits. Each fruit has attributes like name, color, and price.

Create a Dart list named fruits with at least three fruits, represented as maps.
Write a function displayFruitDetails that takes the fruits list as a parameter and prints out the details of each fruit.
Implement a function applyPriceDiscount() that takes the fruits list and a discount percentage as parameters. This function should update the price of each fruit by applying the discount.

Sample I/O:

Original Fruit Details before Discount:
Name: Apple, Color: Red, Price: $2.5
Name: Banana, Color: Yellow, Price: $1.0
Name: Grapes, Color: Purple, Price: $3.0

Fruit Details After Applying 10% Discount:
Name: Apple, Color: Red, Price: $2.25
Name: Banana, Color: Yellow, Price: $0.9
Name: Grapes, Color: Purple, Price: $2.7
*/


// Solution:

void main(){
  List<Map<String, dynamic>> fruits = [
    {'name': 'Banana', 'color':'Yellow', 'price': 10.3},
    {'name': 'Apple', 'color':'red', 'price': 13.5},
    {'name': 'Orange', 'color':'Orange', 'price': 15.3},
  ];
  print('Original Fruit Details before Discount:\n');
  displayFruitsDetails(fruits);
  applyPriceDiscount(fruits, 12);
  displayFruitsDetails(fruits);
}


void displayFruitsDetails(List<Map<String, dynamic>> fruits){
  for(var fruit in fruits){
    print('Name: ${fruit['name']}, Color: ${fruit['color']} , Price: \$${fruit['price']}');
  }
}


void applyPriceDiscount(List<Map<String, dynamic>> fruits, int discountPercentage){
  print('Fruit Details After Applying $discountPercentage% Discount:\n');
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice - (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }

}


