a = []
b = []
while true do
    x = gets.to_i
    break if x == 0
    a << x.to_s
end

for i in 0...a.length do
    b << a[i].split("").map(&:to_i).inject(:+)
end

puts b