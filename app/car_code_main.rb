require './class_Car.rb'
require './class_Human.rb'
require './class_Engine.rb'
require './class_Wheels.rb'

puts "Машина с параметрами:"
car = Car.new({ :weight => "Вес - 1500kg", :lenght => "Длина - 3m", :width => "Ширина - 1.5m", :price => "Цена - 40k $", :kind => "Тип - 4x4", :name => "Марка - BMW", })
car.info { |attr| puts attr }

puts "Люди, находящиеся в машине:"
human = Human.new({ :passenger => "Пассажир - женщина", :driver => "Водитель - мужчина" })
human.option { |opt| puts opt }

puts "Пассажир говорит:"
human.talk

puts "Мотор автомобиля:"
engine = Engine.new({ :weight => "Вес - 300kg", :lenght => "Длина - 0.8m", :width => "Ширина - 0.7m", :price => "Цена - 5k $", :kind => "Тип - v8", :name => "Марка - BMW", })
engine.info { |eng| puts eng }
human.action
engine.start_engine

wheels = Wheels.new({ :weight => "Вес - 30kg(x1)", :lenght => "Длина - 0.25m", :width => "Ширина - 0.25m", :price => "Цена - 400k $(x4)", :kind => "Тип - зимняя резина", :name => "Марка - XX", })
wheels.info { |whee| puts whee }
wheels.wheels_move
car.move 