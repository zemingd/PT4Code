a,b,c = gets.chomp.split(" ")

if b == "+"
  answer = a.to_i + c.to_i
else
  answer = a.to_i - c.to_i
end

puts answer