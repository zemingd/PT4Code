d,n = gets.split.map(&:to_i)

if n == 100
  puts 100**d * n + 1
else
  puts 100**d * n
end