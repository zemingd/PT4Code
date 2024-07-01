w, h, x, y = gets.chomp.split(' ').map(&:to_i)

if x == w && y == h
    print("#{ (w * h)/2.to_f } 1")
else
    print("#{ (w * h)/2.to_f } 0")
end