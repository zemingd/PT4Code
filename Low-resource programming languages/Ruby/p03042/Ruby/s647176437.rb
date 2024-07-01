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

if left > 12
    l_yy = true
    l_mm = false
end
if right > 12
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

if left <= 0 || right <= 0
    na = true 
end


if na
    puts "NA"
else
    if l_yy == true
        if l_mm == false && r_yy == true && r_mm == false # YYYY
            puts "NA"
        elsif l_mm == false && r_mm == true # YYMM
            puts "YYMM"
        elsif l_mm == true && r_mm == true && r_yy == true
            puts "AMBIGUOUS"
        end
    elsif r_yy == true
        if l_yy == true && r_mm == false && l_mm == false # YYYY
            puts "NA"
        elsif r_mm == false && l_mm == true # MMYY
            puts "MMYY"
        end
    end
end