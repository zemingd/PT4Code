N = gets.chomp.to_i
D = gets.chomp.split(' ').map(&:to_i)

if D.size.even?
  n = D.size / 2
  a, b = D.sort[(n-1)..n]
  puts 0 if a == b
  puts ((a+1)..b).size
else
  puts 1
end