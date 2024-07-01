#!/usr/bin/env ruby

numbers = []

numbers = gets.split.map(&:to_i)

1.upto(numbers[0]) do |index|
    if index % 3 == 0 then
        print " #{index}"
    else
        index.to_s.split("").each do |word|
            if word == "3"
                print " #{index}"
                break
            end
        end
    end
end
puts ""
