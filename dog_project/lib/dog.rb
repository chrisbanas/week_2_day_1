
class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

# getter methods

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

# this is a ternary if statment because there are only two options. True on left false on right of ":"
    def bark
        @age > 3 ? @bark.upcase : @bark.downcase 
    end

    def favorite_foods
        @favorite_foods
    end

# setter methods

    def age=(num)
        @age = num
    end

    def favorite_food?(food)

        @favorite_foods.include?(food.capitalize) ? true : false

    end

end
