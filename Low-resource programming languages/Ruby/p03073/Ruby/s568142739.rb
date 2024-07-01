s = gets.chomp.chars
n = s.length
cnt = 0
for i in 1..(n-1)
    if s[i] == s[i-1]
        if s[i] == '1'
            s[i] = '0'
            cnt += 1
        else
            s[i] = '1'
            cnt += 1
        end
    end
end
puts cnt