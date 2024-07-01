X, A, B = gets.split.map(&:to_i)
if B <= A
  puts "delicious"
elsif B <= A + X
  puts "safe"
else
  puts "dangerous"
end