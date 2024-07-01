s = gets.chomp
ans = 753

for i in 0.. s.length-3 do
    x = s[i,3].to_i
    if ans > (x - 753).abs
        ans = (x - 753).abs
    end
end

puts ans