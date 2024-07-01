nu = gets.chomp.split("").map(&:to_i)
for i in 0..2
  if nu[i] == 9
    nu[i] = 1
  else
    nu[i] = 9
  end
end

puts nu.join 
