w, h, x, y = gets.chomp.split(" ").map(&:to_f)
is_multiple = 0
if x*2 == w && y*2 == h then
    is_multiple = 1
end
puts [w*h / 2.0, is_multiple].join(" ")