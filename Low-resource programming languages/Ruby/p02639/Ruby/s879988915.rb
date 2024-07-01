#!/usr/bin/env ruby
input = gets.chomp.split(" ").map(&:to_i)

ans = -1

input.each_with_index do |x, i|
  if x == 0
    ans = i + 1
    break
  end
end

puts ans
