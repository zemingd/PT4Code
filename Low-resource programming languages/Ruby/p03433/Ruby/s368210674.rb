input = readlines

n = input.shift.to_i
a = input.shift.to_i

n = n % 500

if a < n
  puts 'No'
else
  puts 'Yes'
end