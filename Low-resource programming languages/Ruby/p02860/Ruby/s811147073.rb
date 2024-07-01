n = gets.to_i
n2 = n / 2
input = gets.chomp
t1 = input.slice(0, n2)
t2 = input.slice(n2, n)
if t1 == t2
  puts 'Yes'
else
  puts 'No'
end