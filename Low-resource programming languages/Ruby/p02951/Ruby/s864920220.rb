a = gets.to_i
b = gets.to_i
c = gets.to_i

r = c - (a - b)

if r <= 0 then
  puts 0
else
  puts r
end