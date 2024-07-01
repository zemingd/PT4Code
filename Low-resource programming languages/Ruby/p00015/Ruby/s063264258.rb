n = gets.to_i
n.times do
  a,b = gets.to_i,gets.to_i
  str = if (a+b) < 10**80 then (a+b) else "overflow" end
  puts str
end