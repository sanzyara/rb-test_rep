class MyComplex
    def initialize(real,imaginary)
        @real = real
        @imaginary = imaginary
    end
end

def to_s
   "#{@real} + i*#{@imaginary}" 
end

