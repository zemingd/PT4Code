x = gets.chomp.to_i
k = 1
until k*k > x do
  k += 1
end
puts (k-1)*(k-1)
