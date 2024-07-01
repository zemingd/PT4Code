A = gets.split.join.to_i

d = Math.sqrt(A)
if d.to_i ** 2 == A
  puts 'Yes'
else
  puts 'No'
end