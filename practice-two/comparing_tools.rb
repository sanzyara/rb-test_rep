def main
    array = input_data
    solve_with_cycles(array)
    solve_with_iterators(array)
end

def input_data
    [12,56,77,88]
end


def solve_with_cycles(array)
    for number in array
        puts number
    end
end

def solve_with_iterators(array)
    array.each do |number|
        puts number
    end
end


if __FILE__ ==$0
    main
end