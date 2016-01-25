class Car
	def initialize(car_info)
		@weight = car_info[:weight]
        @lenght = car_info[:lenght]
		@width = car_info[:width]
		@price = car_info[:price]
		@kind = car_info[:kind]
		@name = car_info[:name] 
	end
    
    attr_reader :weight, :lenght, :width, :price, :kind, :name

    def info
    	yield(weight)
    	yield(lenght)
    	yield(width)
    	yield(price)
    	yield(kind)
    	yield(name)
    end
    
    def move
    	puts "(Машина начинает движение)"	
    end

    def start_engine
        puts "(Двигатель работает)"
    end

    def wheels_move
    	puts "(Начинают крутится колеса)"	
    end
end		