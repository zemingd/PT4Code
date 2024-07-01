input = STDIN.gets.split(" ")

w = input[0].to_i
h = input[1].to_i
x = input[2].to_i
y = input[3].to_i

rx = w - x
ry = h - y

ans = 0

if rx == x
  ans = x * h
  puts "#{ans} #{ry == y ? 1 : 0}"
  exit
end

if ry == y
  puts "#{y * w} #{rx == x ? 1 : 0}"
  exit
end

a = (ry - y) / (rx - x)
b = y - a * x

ans = (((-b/a)+((h-b)/a))*h)/2.0

puts "#{ans} 0"