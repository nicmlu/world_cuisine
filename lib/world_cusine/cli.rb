class World_Cusine::CLI

    def call 
    greeting
    area_meals 
    meal_info
    # recipe_box
    another_search
    goodbye
    end 

    def greeting
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts "  _    _               _      _   _____              _                "             
        puts " | |  | |             | |    | | /  __ \            (_)               "             
        puts " | |  | |  ___   _ __ | |  __| | | /  \/ _   _  ___  _  _ __    ___   " 
        puts " | |/\| | / _ \ | '__|| | / _` | | |    | | | |/ __|| || '_ \  / _ \  "
        puts " \  /\  /| (_) || |   | || (_| | | \__/\| |_| |\__ \| || | | ||  __/  "
        puts "  \/  \/  \___/ |_|   |_| \__,_|  \____/ \__,_||___/|_||_| |_| \___|  "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        puts " ==================================================================== "
        sleep 2
        puts ""
        puts "Welcome to World Cusine!"
        puts "What is your name?"
        name = gets.strip.capitalize
        puts ""
        puts "#{name}, with World Cusine you can find tasty meals from all over the world!"
        sleep 4
        puts "Here is the list of cusine areas you can explore:"
        sleep 4
        list_areas
    end

    def list_areas 
        World_Cusine::API.all_areas
        World_Cusine::Area.all.each.with_index {|a, i| puts "#{i + 1}. #{a.strArea}"}
    end    
    
    def area_meals
        puts ""
        puts "========================================================================================================="
        puts "To see a list of meals from an area, type in the number of that area or type in exit to end the search..."
        puts ""
        input = gets.chomp.downcase  
        if input == "exit"
        goodbye
        elsif (1..World_Cusine::Area.all.size).include?(input.to_i)
            puts "What a great area to explore! Let's see what meals you can cook up..."
            sleep 2
            area = World_Cusine::Area.all[input.to_i - 1]
            
            puts "Here are the cusine options..."
            sleep 2 
            World_Cusine::API.get_area_meals(area)
            World_Cusine::Meal.all.each.with_index {|m, i| puts "#{i + 1}. #{m.strMeal}"}
        else 
            puts "Sorry, but that is not a valid option. Please type in a different area number..."
            area_meals
        end
    end 

    def meal_info 

        puts "To see more information about a meal, type in the number of that meal or type in exit to end the search..."
        
        input = gets.chomp 
        if input == "exit"
        goodbye
        elsif (1..World_Cusine::Meal.all.size).include?(input.to_i)
        
        puts "Here is the meal you selected:"
        puts "=============================================================="
    
        selected_meal = World_Cusine::Meal.all[input.to_i - 1]
        World_Cusine::Meal.get_meal_info(selected_meal)

        puts "Meal Name: #{Meal.strMeal}"
        puts "Meal Category: #{Meal.strCategory}"
        puts "Meal Area: #{Meal.strArea}"

        puts "=============================================================="
        puts "Meal Ingredients: "
        puts "#{strIngredient1}: #{strMeasure1}" unless strIngredient1 == "null" || strIngredient1 == ""
        puts "#{strIngredient2}: #{strMeasure2}" unless strIngredient2 == "null" || strIngredient2 == ""
        puts "#{strIngredient3}: #{strMeasure3}" unless strIngredient3 == "null" || strIngredient3 == ""
        puts "#{strIngredient4}: #{strMeasure4}" unless strIngredient4 == "null" || strIngredient4 == ""
        puts "#{strIngredient5}: #{strMeasure5}" unless strIngredient5 == "null" || strIngredient5 == ""
        puts "#{strIngredient6}: #{strMeasure6}" unless strIngredient6 == "null" || strIngredient6 == ""
        puts "#{strIngredient7}: #{strMeasure7}" unless strIngredient7 == "null" || strIngredient7 == ""
        puts "#{strIngredient8}: #{strMeasure8}" unless strIngredient8 == "null" || strIngredient8 == ""
        puts "#{strIngredient9}: #{strMeasure9}" unless strIngredient9 == "null" || strIngredient9 == ""
        puts "#{strIngredient10}: #{strMeasure10}" unless strIngredient10 == "null" || strIngredient10 == ""
        puts "#{strIngredient11}: #{strMeasure11}" unless strIngredient11 == "null" || strIngredient11 == ""
        puts "#{strIngredient12}: #{strMeasure12}" unless strIngredient12 == "null" || strIngredient12 == ""
        puts "#{strIngredient13}: #{strMeasure13}" unless strIngredient13 == "null" || strIngredient13 == ""
        puts "#{strIngredient14}: #{strMeasure14}" unless strIngredient14 == "null" || strIngredient14 == ""
        puts "#{strIngredient15}: #{strMeasure15}" unless strIngredient15 == "null" || strIngredient15 == ""
        puts "#{strIngredient16}: #{strMeasure16}" unless strIngredient16 == "null" || strIngredient16 == ""
        puts "#{strIngredient17}: #{strMeasure17}" unless strIngredient17 == "null" || strIngredient17 == ""
        puts "#{strIngredient18}: #{strMeasure18}" unless strIngredient18 == "null" || strIngredient18 == ""
        puts "#{strIngredient19}: #{strMeasure19}" unless strIngredient19 == "null" || strIngredient19 == ""
        puts "#{strIngredient20}: #{strMeasure20}" unless strIngredient20 == "null" || strIngredient20 == ""

        puts "=============================================================="
        puts "Meal Instructions: #{Meal.strInstructions}"

        else 
            puts "Sorry that is not a valid option, please try a different number"
            list_meals
        end
    end 

    # def recipe_box(meal)
    #     puts "Would you like to save this meal to your recipe box?"
    #     puts "Enter 'yes' or 'no'..."
    #     puts "You can enter 'exit' to end the search..."
    #     input = gets.chomp.downcase 
    #     if input == "exit"
    #         goodbye
    #     end
    #     puts ""
    #     case input
    #         when "yes"
            
    #         when "no"
    #         another_search
    #     else
    #         puts "I don't understand that answer."
    #         another_search
    #     end

    # end 

    def another_search
        puts "Enter 'yes' to search for another meal..."
        puts "Enter 'area' to search for another area..."
        puts "Enter 'exit' to end the search..."
           input = gets.chomp.downcase 
        if input == "exit"
            goodbye
        end
        puts ""
        case input
            when "yes"
            area_meals
            when "area"
            list_areas
        else
            puts "I don't understand that answer."
            another_search
        end
    end 
        

    def goodbye
        puts "Hope you we're able to explore some delicous destinations! Thank you for using World Cusine!"
        exit
    end 
end