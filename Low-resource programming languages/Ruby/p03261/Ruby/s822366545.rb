# Shiritori
N = gets.chomp.to_i
W = []
count = 1
flg = true
for i in N.times do
    W.push(gets.chomp.split("").map(&:to_s))
end
for i in 0..N-1 do #ルール１を実装
    for j in 0..N-1 do
        if W[i].join("") == W[j].join("") && i != j
            flg = false
        end
    end
end

for i in 0..N-1 do #ルール２の判定実装
    if i != 0 
        if W[i][0] == W[i-1][W[i-1].length-1]
            count = count + 1
        end
    end
end

if flg == true && count == N
    puts "Yes"
else
    puts "No"
end