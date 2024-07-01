#!/usr/bin/env ruby
input = gets.chomp.split("")

result = 0
input.each do |n|
  if n == "+"
    result += 1
  else
    result -= 1
  end
end

puts result