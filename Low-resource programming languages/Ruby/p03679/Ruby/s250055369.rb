X, A, B = gets.split.map(&:to_i)

if A >= B
  puts "delicious"
elsif X >= B - A
  puts "safe"
else
  puts "dengerous"
end