#!/usr/bin/env ruby
x = gets.chomp.to_i

ans_a = 0
ans_b = 0
-119.upto(120) do |a|
  -118.upto(119) do |b|
    if a ** 5 - b ** 5 == x
      ans_a = a
      ans_b = b
    end
  end
end

puts "#{ans_a} #{ans_b}"
