#x, y, a, b, c = gets.split.map(&:to_i)

s = gets.chomp
k = gets.to_i

n = s.size

ans = ""
for i in 0..n-1
    if i == n - 1
        k %= 26
        ans += ((s[i].ord - "a".ord + k) % 26 + "a".ord).chr
    else 
        if s[i] == "a"
            ans += s[i]
            next
        end
        co = s[i].ord - "a".ord
        if 26 - co <= k
            ans += "a"
            k -= 26 - co
        else
            ans += s[i]
        end
    end
end

puts ans