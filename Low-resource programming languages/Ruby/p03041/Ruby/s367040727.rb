s = gets
ll = s[0] + s[1]
rr = s[2] + s[3]


if 1 <= ll.to_i && ll.to_i <= 12
    if 1 <= rr.to_i && rr.to_i <= 12
      puts "AMBIGUOS"
    else
      puts "MMYY"
    end
elsif 1 <= rr.to_i && rr.to_i <=12
    puts "YYMM"
else
    puts "NA"
end