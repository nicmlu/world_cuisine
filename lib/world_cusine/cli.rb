class World_Cusine::CLI

    def call 
    puts "    ---   --   ---                                         "
    puts "    ---   --   ---                                         "
    puts "    ---   --   ---                                         "
    puts "    ---   --   ---                                         "
    puts "    ---   --   ---                                         "
    puts "    ---   --   ---                                         "
    puts "    ---   --   --- ----------WELCOME-----------                "
    puts "     ---      ---  -----------TO-----------                  "
    puts "      --- -- ---     ------KOCKTAILZ-----                    "
    puts "         ----        ----------------                      "
    puts "         ----          ------------                        "
    puts "         ----            --------                          "
    puts "         ----             ------                           "
    puts "         ----              ====                            "
    puts "         ----               ==                             "
    puts "         ----               ==                             "
    puts "         ----               ==                             "
    puts "         ----               ==                             "
    puts "         ----               ==                             "
    puts "         ----                                              "
    puts "     ================================================   "
    greeting
    list_cocktails 
    more_info
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
        puts "To see a list of areas, type in 'list'."
        puts "If you're no longer interested in tasty bites from around the world, type in 'exit'."
        input = gets.chomp.downcase 

        case input
        when 'list'
            area_list 
        when 'exit'
            goodbye 
        end 
        self.call
    end

    end

    def invalidate_input?(letter)
        letter.match(/\W/) || letter.match(/[xu8]/)
    end 

    def list 
        World_Cusine::API.all_areas.each.with_index {|a, i| puts "#{i + 1}. #{d.strArea}"}
        more_info
    end     
    

    def more_info
        puts "=============================================================="
        puts "Enter the number of the area where you'd like to expand your palate or enter 'exit' to end the search:"
        puts ""
        input = gets.chomp 
        if input === "exit"
        goodbye
        elsif (1..World_Cusine::Area.all.size).include?(input.to_i)
    
        meal = World_Cusine::Meal.all[input.to_i - 1]
        Kocktailz::API.get_single_cocktail(cocktail)

        puts "strDrink: #{cocktail.strDrink}"
        puts "idDrink: #{cocktail.idDrink}"
        puts "strCategory: #{cocktail.strCategory}"
        puts "strIngredient1: #{cocktail.strIngredient1}"
        puts "strIngredient2: #{cocktail.strIngredient2}"
        puts "strIngredient3: #{cocktail.strIngredient3}"
        puts "strInstructions: #{cocktail.strInstructions}"
        puts "strGlass: #{cocktail.strGlass}"
        puts "strAlcoholic: #{cocktail.strAlcoholic}"
        else 
            puts "Sorry that is not a valid option, please try a different number"
            more_info
        end
    end 

    def another_search
        puts "Would you like to search for another cocktail? Enter Y or N"
           input = gets.chomp.downcase 
        if input === "exit"
            goodbye
        end

        puts ""
        case input
            when "y"
            puts "Type the first letter of the cocktail you would like to search:"  
            Kocktailz::Cocktails.all.clear  
            list_cocktails 
            more_info
            another_search
            goodbye
            when "n"
            goodbye
        else
            puts "I don't understand that answer. Enter Y or N"
        end
    end 
        

    def goodbye
        puts "Hope you we're able to explore some delicous destinations! Thank you for using World Cusine!"
    end 
end