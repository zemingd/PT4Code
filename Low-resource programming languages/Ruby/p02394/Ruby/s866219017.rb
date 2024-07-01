s = gets.split(' ')
for i in 0..4
    s[i] = s[i].to_i
end
w, h, x, y, r = s
if r <= x && r <= y && x + r <= w && y + r <= h
    puts 'Yes'
else
    puts 'No'
end

