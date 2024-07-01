X, A, B = gets.split.map(&:to_i)
case
when A - B >= 0
  puts "delicious"
when A + X >= B
  puts "safe"
else
  puts "dangerous"
end
