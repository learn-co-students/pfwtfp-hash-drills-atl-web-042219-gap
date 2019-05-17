require "pry"
def shopping_list
{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
end

# Write methods and implementation here based on README instructions and tests

def vegetarian_ingredients
#     {:ital => [shopping_list[:sweets],shopping_list[:dairy],
#                 shopping_list[:protein][:other][-2,2],
#                 shopping_list[:vegetables], shopping_list[:grains]]
#    }

{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :other => ["nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
   end  

   def ketogenic_ingredients
    {
        :protein => {
            :meat => ["chicken", "fish", "steak"],
            :other => ["eggs", "nuts","beans"]
        },
        :dairy => ["cheese"],
        :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"]
    }
   end

   def mediterranean_ingredients
    {
        :protein => {
            :meat => ["chicken", "fish"],
            :other => ["nuts"]
        },
        :dairy => ["yogurt", "cheese"],
        :fruits => ["bananas", "oranges", "apples", "grapes"],
        :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
        :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
    }
end

def vegan_ingredients
    {
        :sweets => ["soda", "candy", "potato chips"],
        :protein => {
            :other => ["nuts","beans"]
        },
        :fruits => ["bananas", "oranges", "apples", "grapes"],
        :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
        :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
    }
end
    

def remove_allergens(ingredients)
    ingredients.each do |key, val|
        if key == :protein
            no_nuts = ingredients[key]
            no_nuts[:other].delete("nuts")
        end 
    end
end