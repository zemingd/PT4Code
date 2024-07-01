while a = gets do
    b = a.split
    if  b[0].to_i == 0 && b[1].to_i; break
    end
    x = [b[0].to_i, b[1].to_i].sort
    puts x[0].to_s + " " + x[1].to_s
end

