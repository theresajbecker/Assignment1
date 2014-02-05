class Dessert

    def initialize(name, calories)
        @name = name #sets instance variables
	@calories = calories #same
    end
	def name #instance getter method for name 
	@name
	end
	 def name=(new_name)
	@name = new_name
	end
	 
	def calories 
	@calories
	end
	def calories=(new_calories)
	@calories = new_calories
	end

    def healthy?
        return calories < 200 
    end

    def delicious?
	return true
    end

end

test = Dessert.new("pudding", 250)
puts "#{test.name} is yucky. Is it healthy? #{test.healthy?}" 

## #{stinginterpolation}



class JellyBean < Dessert

    def initialize(name, calories, flavor)
        super(name, calories)
	@flavor = flavor

    end
	def flavor # instance getter method for flavor
	@flavor
	end
	def flavor=(new_flavor)
	@flavor=new_flavor
	end
	
    def delicious?
	if (defined? @flavor != nil)
        return @flavor != 'black licorice'
	else 
	return true
	end

    end

end

test = JellyBean.new("jellybean", 250, "black licorice")
puts "#{test.name}'s are my favorite. Do you think they're good ? #{test.delicious?}" 

#worked with Erik K (again)

