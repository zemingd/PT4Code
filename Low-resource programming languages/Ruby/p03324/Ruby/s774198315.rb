d,n = gets.chomp.split(" ").map(&:to_i)
if n < 100
  puts 100 ** d * n
else
  puts 100 ** d * (n+1)
end
