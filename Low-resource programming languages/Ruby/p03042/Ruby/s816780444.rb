input = gets

left = input.slice(0, 2).to_i
right = input.slice(2, 2).to_i

if(left == 0 && right == 0) then
    print "NA"
elsif (left > 12 && right > 12) then
    print "NA"
elsif (left == 0 && left < 12) then 
        print "MMYY"
elsif (right == 0 && left < 12) then
    print "MMYY"
elsif (left == 0 or right == 0) then 
    print "NA"
elsif (left <= 12 && right <= 12 ) then
    print "AMBIGUOUS"
elsif (left >= 12) then
    print "MMYY"
else
    print "YYMM"
end