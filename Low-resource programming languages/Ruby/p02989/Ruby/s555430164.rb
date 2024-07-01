N = gets.chomp.to_i
D = gets.chomp.split(' ').map(&:to_i)

if D.size.even?
  n = D.size / 2
  a, b = D.sort[(n-1)..n]
  puts 1 if a == b
  c, d = ((a+1)..b).to_a
  puts (c..d).size
else
  puts 1
end