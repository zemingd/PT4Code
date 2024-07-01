# frozen_string_literal: true

n, k = gets.split.map &:to_i
p = gets.split.map &:to_i
sum = 0
p.each_cons(k).each do |ar|
  temp = ar.inject(:+)
  if temp > sum
    sum = temp
  end
end

puts (sum+k)/2.0
