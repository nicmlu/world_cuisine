class World_Cusine::Meal

    attr_accessor :strMeal, :idMeal, :strCategory, :strArea, :strInstructions, :strIngredient1, :strIngredient2, :strIngredient3, :strIngredient4, :strIngredient5, :strIngredient6, :strIngredient7, :strIngredient8, :strIngredient9, :strIngredient10, :strIngredient11, :strIngredient12, :strIngredient13, :strIngredient14, :strIngredient15, :strIngredient16, :strIngredient17, :strIngredient18, :strIngredient19, :strIngredient20, :strMeasure1, :strMeasure2, :strMeasure3, :strMeasure4, :strMeasure5, :strMeasure6, :strMeasure7, :strMeasure8, :strMeasure9, :strMeasure10, :strMeasure11, :strMeasure12, :strMeasure13, :strMeasure14, :strMeasure15, :strMeasure16, :strMeasure17, :strMeasure18, :strMeasure19, :strMeasure20

    @@all = []

    def initialize(args)
        update(args)
        @@all.push(self)
    end

    def self.save
        @@all.push(self)
    end 

    def self.all
        @@all
    end

    def update(args)
        args.each {|k,v|self.send("#{k}=", v) if self.respond_to?(k)}
    end

    def meal_details(args)
        args.each {|k,v|self.send("#{k}=", v) if self.respond_to?(k)}
    end 

    def meal_ingredients
     @all_ingredients = [].compact
     all_ingredients.push(:strIngredient1, :strIngredient2, :strIngredient3, :strIngredient4, :strIngredient5, :strIngredient6, :strIngredient7, :strIngredient8, :strIngredient9, :strIngredient10, :strIngredient11, :strIngredient12, :strIngredient13, :strIngredient14, :strIngredient15, :strIngredient16, :strIngredient17, :strIngredient18, :strIngredient19, :strIngredient20, :strMeasure1, :strMeasure2, :strMeasure3, :strMeasure4, :strMeasure5, :strMeasure6, :strMeasure7, :strMeasure8, :strMeasure9, :strMeasure10, :strMeasure11, :strMeasure12, :strMeasure13, :strMeasure14, :strMeasure15, :strMeasure16, :strMeasure17, :strMeasure18, :strMeasure19, :strMeasure20)
     @all_ingredients
    end 
end