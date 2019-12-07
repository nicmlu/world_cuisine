class World_Cusine::API
  ROOT_URL = 'https://www.themealdb.com/api/json/v1/1/filter.php?'

  def self.all_areas
    area_response = HTTParty.get(ROOT_URL + 'a=list')
    # binding.pry
    area_response.each {|area_hash| World_Cusine::Area.new(area_hash)}
  end

  def self.get_area_meals(input)
    meals_response = HTTParty.get(ROOT_URL + "a=#{input}")
    meals_response.each {|meal_hash| World_Cusine::Meal.new(meal_hash)}
  end

  def self.get_meal_info(meal)
    if !meal.strMeal 
    meal_info_response = HTTParty.get(ROOT_URL + "i=#{meal}")
    World_Cusine::Meal.update(meal_info_response)
    end 
  end 
end