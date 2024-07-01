inputs = gets.split.map(&:to_i)
str_1 = ''
str_2 = ''

(0...inputs[1]).each do
  str_1 += inputs[0].to_s
end

(0...inputs[0]).each do
  str_2 += inputs[1].to_s
end

puts [str_1.to_s, str_2.to_s].min
