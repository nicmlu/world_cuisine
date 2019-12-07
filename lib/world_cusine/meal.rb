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
        args.each {|k,v|self.send(("#{k}="), v) if self.respond_to?(k)}
    end

    def meal_details(args)
        args.each {|k,v|self.send(("#{k}="), v) if self.respond_to?(k)}
    end 

    def meal_ingredients
        unless :strIngredient1 != nil || :strIngredient1 != ""
            puts "#{:strIngredient1}: #{:strMeasure1}"
        unless :strIngredient2 != nil || :strIngredient1 != ""
            puts "#{:strIngredient2}: #{:strMeasure2}"
        unless :strIngredient3 != nil || :strIngredient1 != ""
            puts "#{:strIngredient3}: #{:strMeasure3}"
        unless :strIngredient4 != nil || :strIngredient1 != ""
            puts "#{:strIngredient4}: #{:strMeasure4}"
        unless :strIngredient5 != nil || :strIngredient1 != ""
            puts "#{:strIngredient5}: #{:strMeasure5}"
        unless :strIngredient6 != nil || :strIngredient1 != ""
            puts "#{:strIngredient6}: #{:strMeasure6}"
        unless :strIngredient7 != nil || :strIngredient1 != ""
            puts "#{:strIngredient7}: #{:strMeasure7}"
        unless :strIngredient8 != nil || :strIngredient1 != ""
            puts "#{:strIngredient8}: #{:strMeasure8}"
        unless :strIngredient9 != nil || :strIngredient1 != ""
            puts "#{:strIngredient9}: #{:strMeasure9}"
        unless :strIngredient10 != nil || :strIngredient1 != ""
            puts "#{:strIngredient10}: #{:strMeasure10}"
        unless :strIngredient11 != nil || :strIngredient1 != ""
            puts "#{:strIngredient11}: #{:strMeasure11}"
        unless :strIngredient12 != nil || :strIngredient1 != ""
            puts "#{:strIngredient12}: #{:strMeasure12}"
        unless :strIngredient13 != nil || :strIngredient1 != ""
            puts "#{:strIngredient13}: #{:strMeasure13}"
        unless :strIngredient14 != nil || :strIngredient1 != ""
            puts "#{:strIngredient14}: #{:strMeasure14}"
        unless :strIngredient15 != nil || :strIngredient1 != ""
            puts "#{:strIngredient15}: #{:strMeasure15}"
        unless :strIngredient16 != nil || :strIngredient1 != ""
            puts "#{:strIngredient16}: #{:strMeasure16}"
        unless :strIngredient17 != nil || :strIngredient1 != ""
            puts "#{:strIngredient17}: #{:strMeasure17}"
        unless :strIngredient18 != nil || :strIngredient1 != ""
            puts "#{:strIngredient18}: #{:strMeasure18}"
        unless :strIngredient19 != nil || :strIngredient1 != ""
            puts "#{:strIngredient19}: #{:strMeasure19}"
        unless :strIngredient20 != nil || :strIngredient1 != ""
            puts "#{:strIngredient20}: #{:strMeasure20}"
        end 
    end
end