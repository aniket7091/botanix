class PlantModel {
  final String? id;
  final String? title;
  final String? desc;
  final String? category;

  final String? image;
  final List<String>? images;

  final String? size;
  final String? price;
  final String? oldPrice;
  final double? rating;
  final int? reviewCount;


  final bool? isFavorite;
  final bool? isInCart;
  final bool? inStock;

  final int? stockQuantity;
  final String? sellerName;
  final String? sellerId;

  final String? careInstructions;
  final String? plantType;
  final String? sunlight;
  final String? watering;

  final DateTime? createdAt;

  PlantModel({
    this.id,
    this.title,
    this.desc,
    this.category,
    this.image,
    this.images,
    this.size,
    this.price,
    this.oldPrice,
    this.rating,
    this.reviewCount,
    this.isFavorite,
    this.isInCart,
    this.inStock,
    this.stockQuantity,
    this.sellerName,
    this.sellerId,
    this.careInstructions,
    this.plantType,
    this.sunlight,
    this.watering,
    this.createdAt,
  });
}
