/// id : 1
/// title : "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"
/// price : 109.95
/// description : "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday"
/// category : "men's clothing"
/// image : "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
/// rating : {"rate":3.9,"count":120}

class ProductModel {
  ProductModel({
      this.id, 
      this.title, 
      this.price, 
      this.description, 
      this.category, 
      this.image, 
      this.rating,});

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
ProductModel copyWith({  num? id,
  String? title,
  num? price,
  String? description,
  String? category,
  String? image,
  Rating? rating,
}) => ProductModel(  id: id ?? this.id,
  title: title ?? this.title,
  price: price ?? this.price,
  description: description ?? this.description,
  category: category ?? this.category,
  image: image ?? this.image,
  rating: rating ?? this.rating,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['category'] = category;
    map['image'] = image;
    if (rating != null) {
      map['rating'] = rating?.toJson();
    }
    return map;
  }

}

/// rate : 3.9
/// count : 120

class Rating {
  Rating({
      this.rate, 
      this.count,});

  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  num? rate;
  num? count;
Rating copyWith({  num? rate,
  num? count,
}) => Rating(  rate: rate ?? this.rate,
  count: count ?? this.count,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }

}