import 'dart:convert';

class Food {
    Food({
        required this.count,
        required this.recipes,
    });

    final int count;
    final List<Recipe> recipes;

    factory Food.fromRawJson(String str) => Food.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        count: json["count"],
        recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
    };
}

class Recipe {
    Recipe({
        required this.publisher,
        required this.title,
        required this.sourceUrl,
        required this.recipeId,
        required this.imageUrl,
        required this.socialRank,
        required this.publisherUrl,
    });

    final String publisher;
    final String title;
    final String sourceUrl;
    final String recipeId;
    final String imageUrl;
    final double socialRank;
    final String publisherUrl;

    factory Recipe.fromRawJson(String str) => Recipe.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        publisher: json["publisher"],
        title: json["title"],
        sourceUrl: json["source_url"],
        recipeId: json["recipe_id"],
        imageUrl: json["image_url"],
        socialRank: json["social_rank"].toDouble(),
        publisherUrl: json["publisher_url"],
    );

    Map<String, dynamic> toJson() => {
        "publisher": publisher,
        "title": title,
        "source_url": sourceUrl,
        "recipe_id": recipeId,
        "image_url": imageUrl,
        "social_rank": socialRank,
        "publisher_url": publisherUrl,
    };
}

