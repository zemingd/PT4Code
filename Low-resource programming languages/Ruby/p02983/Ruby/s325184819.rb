l,r = gets.split(' ').map(&:to_i)
if l/2019 != r/2019
  puts 0
else
  q = l%2019
  puts q*(q+1)
end