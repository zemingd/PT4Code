S = gets.chomp
ans = ''
i = 0
for nums in S.split(/\A(.{2,2})/, 2)[1..-1] do
    if nums.to_i > 12 || nums.to_i == 0
        ans += "Y"
    else
        ans += "M"
    end
    i += 1
end

if ans == "YM"
    p 'YYMM'
elsif ans == "MY"
    p "MMYY"
elsif ans == "MM"
    p 'AMBIGUOUS'
else
    p 'NA'
end
