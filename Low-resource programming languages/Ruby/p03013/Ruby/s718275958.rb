N,M = gets.chomp.split(" ").map(&:to_i)
broken_stairs = []
ans = 0
flg = true
for i in 0..M-1 do
    bs = gets.chomp.to_i 
    broken_stairs[i] = bs - 1
    if i >= 1
        if broken_stairs[i] < broken_stairs[i-1]
            if broken_stairs[i-1] - broken_stairs[i] == 1
                flg = false
            end
        else
            if broken_stairs[i] - broken_stairs[i-1] == 1
                flg = false
            end
        end
    end 
end

for i in 1..N-1 do
    if flg == false
        break
    end
    if broken_stairs.include?(i)
        # Nothing
    elsif i % 2 == 1
        ans = ans * 2
    end
end
if flg == true
    puts ans 
else
    puts 0
end