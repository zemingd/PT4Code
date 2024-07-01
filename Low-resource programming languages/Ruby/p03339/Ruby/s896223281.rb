n = gets.to_i
s = gets.chomp.split("")
ans = 999999

for i in 1..n-1 do
    s1 = s[0,i-1]
    s2 = s[i+1,n-i]
    ans1 = s1.count("W") + s2.count("E")
    if ans1 < ans
        ans = ans1
    end
end

puts ans