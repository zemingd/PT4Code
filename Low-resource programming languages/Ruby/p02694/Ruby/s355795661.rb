X = gets.chomp.to_i
RATE = 1.01
deposit = 100
year = 0

while deposit < X
  year += 1
  deposit += deposit / 100
end
puts year
