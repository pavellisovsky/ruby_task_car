class Human
	def initialize(options)
		@passenger = options[:passenger]
		@driver = options[:driver]
	end
    
    attr_reader :passenger, :driver

    def option
    	yield(passenger)
    	yield(driver)
    end
    
    def talk
    	puts "Поехали!"
    end 

    def action
    	puts "(Водитель нажимает кнопку запуска двигателя)"
    end	
end		 