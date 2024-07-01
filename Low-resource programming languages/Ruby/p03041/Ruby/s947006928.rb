s = gets
s_former = s[0] + s[1]
s_latter = s[2] + s[3]


if s_former.to_i.between?(01,12 ) && s_latter.to_i.between?(01, 12)
    puts "AMBIGUOS"
elsif s_latter.to_i.between?(01, 12)
    puts "YYMM"
elsif s_former.to_i.between?(01,12) 
    puts "MMYY"
else
    puts "NA"
end