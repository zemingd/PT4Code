n = gets.chomp

ans = ""
for i in 0..n.length-1 do
    if n[i] == '1'
        ans += '9'
    else
        ans += '1'
    end
end

puts ans