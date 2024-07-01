# frozen_string_literal: true

N = gets.chomp.to_i
ans_array = {}
ans_array["AC"] = 0
ans_array["WA"] = 0
ans_array["TLE"] = 0
ans_array["RE"] = 0

N.times do
  ans = gets.chomp
  ans_array[ans] += 1
end
# array = gets.chomp.split.map(&:to_i)

puts "AC x #{ans_array["AC"]}"
puts "WA x #{ans_array["WA"]}"
puts "TLE x #{ans_array["TLE"]}"
puts "RE x #{ans_array["RE"]}"
