a = gets
a1 = a[0..1].to_i
a2 = a[2..3].to_i
flug = 0
if a1.between?(0,19) == true && a2.between?(1,12) == true
    flug += 1
end

if a1.between?(1,12) == true && a2.between?(0,19) == true
    flug += 2
end

if flug == 0
    puts "NA"
    elsif flug == 1
    puts "YYMM"
    elsif flug == 2
    puts "MMYY"
    elsif flug == 3
    puts "AMBIGUOUS"
end
