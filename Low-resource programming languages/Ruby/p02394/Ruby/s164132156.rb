w, h, x, y, r =gets.chomp.split.map(&:to_i)
if x + r <= w && y + r <=  h
    puts "Yes"
else
    puts "No"
end