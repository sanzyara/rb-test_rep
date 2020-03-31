# frozen_string_literal: true

require_relative 'complex'

complex_one = MyComplex.new(10, 50)
complex_two = MyComplex.new(33, -66)

pp complex_one
puts complex_one
pp complex_two
puts complex_two

sum = complex_one.add(complex_two)
puts "Summ of complex numbers : #{sum}"
