w, h, x, y = gets.chomp.split(" ").map(&:to_i)

m = [w*0.5, h*0.5]
d = w*h*0.5

if x == m[0] && y == m[1]
  puts sprintf("%.6f 1", d)
else
  puts sprintf("%.6f 0", d)
end