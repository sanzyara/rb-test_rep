# frozen_string_literal: true

# comment
class MyComplex
  attr_reader :real, :imaginary
  def initialize(real, imaginary)
    @real = real
    @imaginary = imaginary
  end

  def to_s
    "#{@real} + i*#{@imaginary}"
  end

  def add(other)
    MyComplex.new(
      @real + other.real,
      @imaginary + other.imaginary
    )
  end
end
