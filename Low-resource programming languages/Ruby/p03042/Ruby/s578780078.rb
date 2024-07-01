def solve(inp)
    return inp
end

inp = gets.chomp
left = (inp[0] + inp[1]).to_i
right = (inp[2] + inp[3]).to_i

l_yy = false
l_mm = false
r_yy = false
r_mm = false
na = false

if left > 12 || left <= 0
    l_yy = true
    l_mm = false
end
if right > 12  || right <= 0
    r_yy = true
    r_mm = false
end

if 0 < left && left <= 12 
    l_yy = true
    l_mm = true
end

if 0 < right && right <= 12 
    r_yy = true
    r_mm = true
end


if l_yy == true && l_mm == true &&
    r_yy == true && r_mm == true
    puts "AMBIGUOUS"
elsif l_yy == true && l_mm == true &&
    r_yy == true && r_mm == false
    puts "MMYY"
elsif l_yy == true && l_mm == true &&
    r_yy == false && r_mm == true
    puts "YYMM"
elsif l_yy == true && l_mm == false &&
    r_yy == true && r_mm == true
    puts "YYMM"
elsif l_yy == true && l_mm == false &&
    r_yy == true && r_mm == false
    puts "NA"
elsif l_yy == true && l_mm == false &&
    r_yy == false && r_mm == true
    puts "YYMM"
elsif l_yy == false && l_mm == true &&
    r_yy == true && r_mm == true
    puts "MMYY"
elsif l_yy == false && l_mm == true &&
    r_yy == true && r_mm == false
    puts "MMYY"
elsif l_yy == false && l_mm == true &&
    r_yy == false && r_mm == true
    puts "NA"
end
