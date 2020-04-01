class Car
  attr_reader :marks, :model, :year, :benz
    def initialize(marks, model, year, benz)
      @marks = marks
      @model = model
      @year = year
      @benz = benz
    end

    def to_s
      "Marks: #{@marks}, Model: #{@model}, Year: #{@year}, Consumption: #{@benz}"
    end
end