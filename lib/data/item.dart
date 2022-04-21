class Item{
   String id;
   String name;
   String producer;

   Item({required this.id,required this.name,required this.producer});

   factory Item.fromJson(Map<String, dynamic> json) {
      return Item(
         id: json['id'],
         name: json['name'],
         producer: json['producer'],
      );
   }
}