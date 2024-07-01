d, n = gets.split(" ").map{|t| t.to_i }
if d == 0 and n == 100
  puts 101
else
  puts (100 ** d) * n
end
