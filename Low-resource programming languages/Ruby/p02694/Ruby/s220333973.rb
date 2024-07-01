x = gets.to_i # これを上回りたい
gankin = 100
year = 1
while gankin * (1 + 0.01) ** year < x 
    year += 1
end

puts year