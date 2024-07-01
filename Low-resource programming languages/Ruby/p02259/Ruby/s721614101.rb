n = gets.to_i
numbers = gets.chomp.split.map(&:to_i)


top = 1
swap_count = 0
until top == numbers.size
    (n - 1).downto(top){|j|
        if numbers[j] < numbers[j - 1]
            numbers[j], numbers[j - 1] = numbers[j - 1], numbers[j]
            swap_count += 1
        end
    }
    top += 1
end

puts numbers.join(" ")
puts swap_count