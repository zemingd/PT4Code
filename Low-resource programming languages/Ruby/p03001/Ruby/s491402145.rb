w, h, x, y = gets.chomp.split.map(&:to_i)

if w/2.0 == x and h/2.0 == y
    tf = 1
else
    tf = 0
end
s = w*h/2.0

print("#{s} #{tf}")