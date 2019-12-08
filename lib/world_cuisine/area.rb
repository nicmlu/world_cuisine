class World_Cuisine::Area

    attr_accessor :strArea

    @@all = []

    def initialize(args)
        args.each {|k,v|self.send(("#{k}="), v)}
        @@all << self 
        # unless @@all.include?(self)
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end     

#     def self.find(strArea)
#     searched_area = self.all.select {|area| area.strArea == strArea}
#     if searched_area != []
#       searched_area.pop
#     else 
#       self.new(strArea)
#     end
#   end

#     def meals
#         Meal.all.select {|meal| meal.strArea == self}
#     end 

#     def add_meal
#         meal.strArea = self 
#     end 

#     def print_meals
#         Meal.all.each {|meal| if meal.strArea == self then puts meal.strMeal end}
#     end     

end