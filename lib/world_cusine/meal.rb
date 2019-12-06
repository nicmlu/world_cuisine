class World_Cusine::Meal

    attr_accessor :strMeal, :idMeal, :strMeal, :strCategory, :strArea, :strInstructions

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
end