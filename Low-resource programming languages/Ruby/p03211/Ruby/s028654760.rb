s = gets.to_s
ans = 10000;
for i in 0..s.size do
    tmp = s[i, 3]
    x = (753 - tmp.to_i).abs
    ans = [ans, x].min
end

puts ans