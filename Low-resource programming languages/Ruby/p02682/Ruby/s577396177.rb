a,b,c,k = gets.chomp.split.map(&:to_i)
if k <= a
  puts k
elsif k <= a+b && k >= a
  puts a
elsif k > a + b
  puts a - (k-a-b)
end