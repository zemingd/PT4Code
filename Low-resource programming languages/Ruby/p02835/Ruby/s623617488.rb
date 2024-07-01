a1, a2, a3 = gets.split.map(&:to_i)
result = "win"

if a1 + a2 + a3 >= 22
  result = "bust"
end

puts result