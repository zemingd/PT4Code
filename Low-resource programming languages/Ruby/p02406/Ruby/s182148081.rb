n = gets.to_i
for i in 3..n do
  print i % 3 ==0 || i.to_s =~ /3/ ? " #{i}" : ""
end