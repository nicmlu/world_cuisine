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
        if :strIngredient1 != nil || ""
            puts "#{:strIngredient1}: #{:strMeasure1}"
        if :strIngredient2 != nil || ""
            puts "#{:strIngredient2}: #{:strMeasure2}"
        if :strIngredient3 != nil || ""
            puts "#{:strIngredient3}: #{:strMeasure3}"
        if :strIngredient4 != nil || ""
            puts "#{:strIngredient4}: #{:strMeasure4}"
        if :strIngredient5 != nil || ""
            puts "#{:strIngredient5}: #{:strMeasure5}"
        if :strIngredient6 != nil || ""
            puts "#{:strIngredient6}: #{:strMeasure6}"
        if :strIngredient7 != nil || ""
            puts "#{:strIngredient7}: #{:strMeasure7}"
        if :strIngredient8 != nil || ""
            puts "#{:strIngredient8}: #{:strMeasure8}"
        if :strIngredient9 != nil || ""
            puts "#{:strIngredient9}: #{:strMeasure9}"
        if :strIngredient10 != nil || ""
            puts "#{:strIngredient10}: #{:strMeasure10}"
        if :strIngredient11 != nil || ""
            puts "#{:strIngredient11}: #{:strMeasure11}"
        if :strIngredient12 != nil || ""
            puts "#{:strIngredient12}: #{:strMeasure12}"
        if :strIngredient13 != nil || ""
            puts "#{:strIngredient13}: #{:strMeasure13}"
        if :strIngredient14 != nil || ""
            puts "#{:strIngredient14}: #{:strMeasure14}"
        if :strIngredient15 != nil || ""
            puts "#{:strIngredient15}: #{:strMeasure15}"
        if :strIngredient16 != nil || ""
            puts "#{:strIngredient16}: #{:strMeasure16}"
        if :strIngredient17 != nil || ""
            puts "#{:strIngredient17}: #{:strMeasure17}"
        if :strIngredient18 != nil || ""
            puts "#{:strIngredient18}: #{:strMeasure18}"
        if :strIngredient19 != nil || ""
            puts "#{:strIngredient19}: #{:strMeasure19}"
        if :strIngredient20 != nil || ""
            puts "#{:strIngredient20}: #{:strMeasure20}"
        end 
    end 

end