n = gets.chomp.to_i
s = gets.chomp.to_s
mid = n / 2
flg = true
for i in 0..mid - 1 do
    if s[i] == s[mid]
        mid += 1
    else
        flg = false
        break
    end
end
if flg
    puts 'Yes'
else
    puts 'No'
end