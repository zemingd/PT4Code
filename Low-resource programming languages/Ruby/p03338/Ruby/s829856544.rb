n = gets.to_i
s = gets.chomp.split("")
ans = 1

for i in 1..n-1 do
    s1 = s[0,i].uniq
    s2 = s[i,n-i].uniq
    ans1 = 0
    for j in 0..s1.length-1 do
        if s2.include?(s1[j])
            ans1 = ans1 + 1
        end
    end
    if ans1 >= ans
        ans = ans1
    end
end

puts ans