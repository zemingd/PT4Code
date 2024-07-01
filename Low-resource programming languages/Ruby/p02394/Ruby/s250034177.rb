w, h, x, y, r = gets.split(" ")
w = w.to_i;h = h.to_i;x = x.to_i;y = y.to_i;r = r.to_i;
if x - r >= 0 && y - r >= 0
    if x + r <= w && y + r <= h
        puts "Yes"
    else
        puts "No"
    end
else
    puts "No"
end
