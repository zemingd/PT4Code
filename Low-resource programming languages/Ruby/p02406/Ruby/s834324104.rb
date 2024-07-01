n = gets.to_i
for n in 3..10000 do
  print n % 3 == 0 || n % 10 == 3 ? " #{n}" : ""
end