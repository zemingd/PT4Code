#require "pry-byebug"

A,B = gets.split.map(&:to_i)
a_min = (A / 0.08).ceil
b_min = (A / 0.1).ceil
max = (100 / 0.1).ceil
b_num = b_min
while b_num <= max
  tmp = (b_num * 0.08).floor
  if tmp == A && (b_num * 0.1).floor == B
    puts b_num
    exit
  end
  break if A < tmp
  break if B < tmp
  b_num += 1
end
puts "-1"

