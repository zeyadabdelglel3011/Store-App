/// id : 8
/// title : "Pierced Owl Rose Gold Plated Stainless Steel Double"
/// price : 10.99
/// description : "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel"
/// category : "jewelery"
/// image : "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg"
/// rating : {"rate":1.9,"count":100}

class DetailsModel {
  DetailsModel({
      this.id, 
      this.title, 
      this.price, 
      this.description, 
      this.category, 
      this.image, 
      this.rating,});

  DetailsModel.fromJson(dynamic json) {
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
DetailsModel copyWith({  num? id,
  String? title,
  num? price,
  String? description,
  String? category,
  String? image,
  Rating? rating,
}) => DetailsModel(  id: id ?? this.id,
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

/// rate : 1.9
/// count : 100

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