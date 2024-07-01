a, b = gets.chomp.split

x  = (a + b).to_i

ans = false
for i in 1..500 do
  ans = true if x == i * i
end

puts ans ? "Yes" : "No"