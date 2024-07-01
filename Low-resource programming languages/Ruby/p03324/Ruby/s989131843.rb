d, n = gets.split(' ').map(&:to_i)
 
if n == 100
  puts 101 * (100 ** d)
else
  puts n * (100**d)
end