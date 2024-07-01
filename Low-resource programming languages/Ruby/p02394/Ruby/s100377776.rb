s = gets.split(' ')
s.each do |t|
    t = t.to_i
end
w, h, x, y, r = s
if r <= x && r <= y && x + r <= w && y + r <= h
    puts 'Yes'
else
    puts 'No'
end

