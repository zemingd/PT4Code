N = gets.to_i
cap_min = 1145141919810364364

for i in 0..4 do
  tmp = gets.to_i
  if tmp < cap_min
    cap_min = tmp
  end

end

puts 4 + (N.to_f/cap_min).ceil
