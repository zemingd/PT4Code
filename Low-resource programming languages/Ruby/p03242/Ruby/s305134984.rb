n = gets.chomp
ans = ''
for i in 0..2
    if n[i] == '1'
        ans += '9'
    elsif n[i] == '9'
        ans += '1'
    else
        ans += n[i]
    end
end
puts ans