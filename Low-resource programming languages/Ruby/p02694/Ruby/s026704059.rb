BASE = 100

X = gets.to_i

x = BASE
i = 0
while x < X do
  x = x + x.to_s.chars.reverse.drop(2).reverse.join.to_i
  i += 1
end

p i
