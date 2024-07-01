n = gets.to_i
for i in 3..n do
  print i % 3 == 0 || i % 10 == 3 ? " #{i}" : ""
end
puts