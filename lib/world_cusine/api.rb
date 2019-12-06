class World_Cusine::API
  ROOT_URL = 'https://www.themealdb.com/api/json/v1/1/filter.php?'

  @@cocktail_letter = ''

  def self.get_area(strarea)
    @@area = strarea

    area_response = HTTParty.get(ROOT_URL + "a=#{strarea}")
    area_response["area"].each {|area_hash| World_Cusine::Area.new(area_hash)}

  end

  def self.get_area_meals(input)
    @@meal = input
    
      meals_response = HTTParty.get(ROOT_URL + "a=#{input}")
      meals_response["meal"].each {|meal_hash| World_Cusine::Meal.new(meal_hash)
    
  end
end