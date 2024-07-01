# frozen_string_literal: true

n, k = gets.split.map &:to_i
p = gets.split.map &:to_f
sum = 0
p.each_cons(k).each do |ar|
  temp = ar.inject(0){ |s, y| s + (y + 1) / 2 }
  if temp > sum
    sum = temp
  end
end

puts sum.to_f