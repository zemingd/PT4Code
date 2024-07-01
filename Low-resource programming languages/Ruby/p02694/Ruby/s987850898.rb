k = gets.to_i

x = 101
i = 1
while k > x do
  x = (x * 1.01).to_i
  i += 1
end
p i