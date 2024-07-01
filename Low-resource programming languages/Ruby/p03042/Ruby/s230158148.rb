s = gets.chomp.split("")

left = s[0].to_i * 10 + s[1].to_i
right = s[2].to_i * 10 + s[3].to_i

mon_l = false
mon_r = false

if 0 < left and left < 13
    mon_l = true
end

if 0 < right and right < 13
    mon_r = true
end

if mon_l and mon_r 
    puts "AMBIGUOUS"
elsif mon_l 
    puts "MMYY"
elsif mon_r
    puts "YYMM"
else
    puts "NA"
end