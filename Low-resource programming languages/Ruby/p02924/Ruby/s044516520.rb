n = gets.chomp.to_i
if n%2 == 0
  sum = (n/2 -1) * n + n/2
else
    sum = n/2 * n
end
puts sum