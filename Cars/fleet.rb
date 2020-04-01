class Fleet
    attr_reader :cars
  def initialize
    @cars= []
  end

  def add(new_car)
    @cars.push(new_car)
  end

  def load_from_file(file)
    require 'json'
    json_data = File.read(file)
    ruby_objects = JSON.parse(json_data)
    ruby_objects.each do |car|
      add(Car.new(car["mark"],car["model"], Integer(car["year"]), Float(car["consumption"])))
    end
  end

  def average_consumption
    full = 0
    for car in cars do
      full += car.benz
    end
    return full/cars.size
  end

  def number_by_brand(brand)
    counter = 0
      for car in cars do
        if (car.marks.downcase == brand.downcase)
          counter+=1
        end
      end
    return counter
  end

    def number_by_model(model)
        counter = 0
        for car in cars do
            if (car.model.downcase == model.downcase)
                counter+=1
            end
        end
        return counter
    end

  def consumption_by_brand(brand)
    counter = 0
    count_benz = 0
    for car in cars do
      if(car.model.downcase==brand.downcase)
        counter +=1
        count_benz += car.benz
      end
    end
    if(counter <= 0 )
      return 0
    end
    return count_benz/counter
  end
end
