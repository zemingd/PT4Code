s = gets.chomp
n = s.length
s = s.chars
cnt_0 = 0
cnt_1 = 0
for i in 0..(n-1)
    if s[i] == '0'
        cnt_0 += 1
    else
        cnt_1 += 1
    end
end
result = [cnt_0,cnt_1]
puts result.min*2