n = gets.to_i
ary = gets.split.map(&:to_i)

sum = ary.inject(:+)
count = 0
abs = sum
ary.each do |i|
  count += i
  abs = [(count * 2 - sum).abs, abs].min
end
puts abs