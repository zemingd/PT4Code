l,r = gets.split(' ').map(&:to_i)
if l/2019 != r/2019
  puts 0
else
  puts ((l%2019)*((l+1)%2019)%2019
end
