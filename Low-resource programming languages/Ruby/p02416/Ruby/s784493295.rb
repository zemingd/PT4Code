#!/usr/bin/env ruby

result = [];numbers = []
while true
    numbers = gets.split("").map(&:to_i)
    if numbers[0] == 0 then
        break
    else
        result << numbers.sum
    end
end
puts result
