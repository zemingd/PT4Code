while
x = gets()
x = x.split
m = x[0].to_i
f = x[1].to_i 
r = x[2].to_i
if m == -1 && f == -1 && r == -1;break
end
    if m == -1 || f == -1
    puts "F"
    elsif 80 <= m + f
    puts "A"
    elsif 65 <= m + f && m + f < 80
    puts "B"
    elsif 50 <= m + f && m + f < 65
    puts "C"
    elsif 30 <= m + f && m + f < 50 && r < 50
    puts "D"
    elsif 30 <= m + f && m + f < 50 && 50 <= r
    puts "C"
    elsif m + f < 30
    puts "F"
    end
    
end

