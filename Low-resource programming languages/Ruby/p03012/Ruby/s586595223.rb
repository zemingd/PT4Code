n = gets.to_i
arr = gets.split.map(&:to_i)
s = arr.inject(0){|sum,x| sum + x }
min = s
f = 0
b = s
arr.each do |i|
    f += i
    b -= i
    diff = (f-b).abs
    min = [min, diff].min
end
puts min