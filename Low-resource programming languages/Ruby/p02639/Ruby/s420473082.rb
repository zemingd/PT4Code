x = gets.split.map(&:to_i)
sum = 0
for num in 0..4 do
sum += x[num]
end
ans = 15 - sum 
p ans