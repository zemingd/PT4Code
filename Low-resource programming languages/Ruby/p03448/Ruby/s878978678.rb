# 複雑な全探索

a_max = gets.to_i # 500
b_max = gets.to_i # 100
c_max = gets.to_i # 50
x = gets.to_i

count = 0

for a in 0..a_max
    for b in 0..b_max
        for c in 0..c_max
            if 500*a + 100*b + 50*c == x
                count += 1
            end
        end
    end
end

p count