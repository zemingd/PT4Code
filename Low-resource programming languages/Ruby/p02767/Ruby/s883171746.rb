n = gets.to_i
x = gets.split.map(&:to_i)
y = 0
x.each do |i|
    y += i
end
y = (y.to_f)/(x.size)
if y - y.to_i <= 0.5
    y = y.to_i 
else
    y = y.to_i + 1
end
sum = 0
x.each do |j|
    sum += (j-y)**2
end
puts sum