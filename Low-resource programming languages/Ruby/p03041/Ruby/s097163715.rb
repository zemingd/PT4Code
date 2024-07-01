s = gets
s_former = s[0] + s[1]
s_latter = s[2] + s[3]


if s_former.to_i.between?(01,12 ) 
    if s_latter.to_i.between?(01, 12)
      puts "AMBIGUOS"
    else
      puts "MMYY"
    end
elsif s_latter.to_i.between?(01, 12) 
    puts "YYMM"
else
    puts "NA"
end