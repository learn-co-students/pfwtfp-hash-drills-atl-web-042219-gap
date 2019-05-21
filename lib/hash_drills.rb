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
    {
      :sweets => ["soda", "candy", "potato chips"],
      :protein => {
          :other => ["nuts","beans"],
      },
      :dairy => ["milk", "yogurt", "cheese"],
      :fruits => ["bananas", "oranges", "apples", "grapes"],
      :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
      :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
end

def ketogenic_ingredients
  {
      # :sweets => ["soda", "candy", "potato chips"],
      :protein => {
          :meat => ["chicken", "fish", "steak"],
          :other => ["eggs", "nuts","beans"]
      },
      :dairy => ["cheese"],
      # :fruits => ["bananas", "oranges", "apples", "grapes"],
      :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"]
      # :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
end

def mediterranean_ingredients
  {
      # :sweets => ["soda", "candy", "potato chips"],
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
  new_vegan = vegetarian_ingredients.reject{|k, v| k == :dairy}
  new_vegan
end

def remove_allergens(mediterranean_ingredients)
  no_nuts = mediterranean_ingredients.reject{|k, v| k == :other}
  no_nuts
end
