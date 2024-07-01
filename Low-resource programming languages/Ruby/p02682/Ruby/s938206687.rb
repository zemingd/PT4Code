a, b, c, k = gets.chomp.split(' ').map{|i| i.to_i }

if a >= k
  puts k
elsif a + b >= k
  puts a
else
  puts a - (k - a - b)
end
