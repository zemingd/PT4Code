a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

ans = 0
for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      ans += 1 if 500 * i + 100 * j + 50 * k == x
    end
  end
end

puts ans