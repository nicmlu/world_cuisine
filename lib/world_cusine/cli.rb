class World_Cusine::CLI

    def call 
    greeting
    list_areas
    area_meals 
    meal_info
    another_search
    goodbye
    end 

    def greeting
        puts "Welcome to World Cusine!"
        sleep 2
        puts "What is your name?"
        name = gets.strip.capitalize
        puts "#{name}, with World Cusine you can find tasty meals from all over the world!"
        sleep 2
        puts "Here is the list of cusine areas to explore:"
    end

    # def invalidate_input?(letter)
    #     letter.match(/\W/) || letter.match(/[xu8]/)
    # end 

    def list_areas 
        World_Cusine::API.all_areas.each.with_index {|a, i| puts "#{i + 1}. #{a.strArea}"}
        # list_meals
    end    
    
    def area_meals
        puts "To see a list of meals from an area, type in the number of that area or type in exit to end the search..."
        input = gets.chomp.downcase  
        if input === "exit"
        goodbye
        elsif (1..World_Cusine::Area.all.size).include?(input.to_i)
            puts "What a great area to explore! Let's see what meals you can cook up..."
            sleep 2
            area = World_Cusine::Area.all[input.to_i - 1]
            meals = World_Cusine::API.get_area_meals(area)

        puts "Here are the cusine options..."
        sleep 2 

        meals.each.with_index {|meal_hash, index| puts "#{index + 1}. #{Meal.strMeal}"}
        else 
            puts "Sorry, but that is not a valid option. Please type in a different area number..."
            list_meals
        end

    end 

    def meal_info 

        puts "To see more information about a meal, type in the number of that meal or type in exit to end the search..."
        
        
        input = gets.chomp 
        if input === "exit"
        goodbye
        elsif
    
        selected_meal = World_Cusine::Meal.get_meal_info
        meal_ingredients = World_Cusine::Meal.meal_ingredients

        puts "Here is the meal you selected:"
        puts "=============================================================="

        puts "Meal Name: #{Meal.strMeal}"
        puts "Meal Category: #{Meal.strCategory}"
        puts "Meal Area: #{Meal.strArea}"

        puts "=============================================================="
        puts "Meal Ingredients:"
        meal_ingredients 

        puts "Meal Instructions: #{Meal.strInstructions}"

        else 
            puts "Sorry that is not a valid option, please try a different number"
            list_meals
        end

        puts ""
        
    
    end 

    # def another_search
    #     puts "Would you like to search for another cocktail? Enter Y or N"
    #        input = gets.chomp.downcase 
    #     if input === "exit"
    #         goodbye
    #     end

    #     puts ""
    #     case input
    #         when "y"
    #         puts "Type the first letter of the cocktail you would like to search:"  
    #         Kocktailz::Cocktails.all.clear  
    #         list_cocktails 
    #         more_info
    #         another_search
    #         goodbye
    #         when "n"
    #         goodbye
    #     else
    #         puts "I don't understand that answer. Enter Y or N"
    #     end
    # end 
        

    def goodbye
        puts "Hope you we're able to explore some delicous destinations! Thank you for using World Cusine!"
    end 
end