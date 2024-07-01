n = gets.chomp.to_i
_n = n
sum = 0
loop do
  n = n % 10
  sum += n % 10
  break if n < 10
end
puts _n % sum == 0 ? 'Yes' : 'No'
