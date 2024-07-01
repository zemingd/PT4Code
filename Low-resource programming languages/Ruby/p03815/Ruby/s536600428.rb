x = gets.to_i
n = x / 11 * 2

if (x % 11).between?(1, 6)
  n += 1
elsif (x % 11).between?(7, 10)
  n += 2
end

p n 
