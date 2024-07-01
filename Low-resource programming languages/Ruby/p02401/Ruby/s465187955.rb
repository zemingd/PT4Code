while true do
  a,x,b = gets.chomp.split
  if x == "?" then break end
  puts (a.to_i).send("#{x}",b.to_i)
end
