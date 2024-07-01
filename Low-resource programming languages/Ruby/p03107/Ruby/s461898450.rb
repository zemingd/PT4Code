S = gets.chomp

count_0 = 0
count_1 = 0
for i in 0...(S.size) do
    if S[i] === '0' 
        count_0 += 1
    else 
        count_1 += 1
    end
end
puts 2 * [count_0,count_1].min
