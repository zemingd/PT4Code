s1 = 0
s2 = 0
sum = 0
ans = 0

N = gets.chomp.to_i
tar = gets.chomp.split(" ").map(&:to_i)

for i in 0..tar.length-1 do #make sum
    sum = sum + tar[i]
end
for i in 0..tar.length-2 do
    s1 = s1 + tar[i]
    s2 = sum - s1
    if i == 0
        if s1 >= s2
            ans = s1 - s2
        elsif s2 >= s1
            ans = s2 - s1
        end
    else
        if s1 >= s2
            if ans > s1 - s2
                ans = s1 - s2
            end
        elsif s2 >= s1
            if ans > s2 - s1 
                ans = s2 - s1
            end
        end
    end
end
puts ans