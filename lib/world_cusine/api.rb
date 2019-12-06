class World_Cusine::API
  ROOT_URL = 'https://www.themealdb.com/api/json/v1/1/filter.php?'

  def self.get_area(strarea)
    @@area = strarea

    area_response = HTTParty.get(ROOT_URL + "a=#{strarea}")
    area_response["area"].each {|area_hash| World_Cusine::Area.new(area_hash)}

  end

  def self.get_area_meals(input)
    @@meal_name = input
    
    meals_response = HTTParty.get(ROOT_URL + "a=#{input}")
    meals_response["meal"].each {|meal_hash| World_Cusine::Meal.new(meal_hash)
    
  end

  def self.get_meal_info(idMeal)
    @meal_id = idMeal

    meal_info_response = HTTParty.get(ROOT_URL + "i=#{idMeal}")
    meal_info_response["info"].each {|info_hash| World_Cusine::Meal.meal_details(info_hash)}

  end 
end