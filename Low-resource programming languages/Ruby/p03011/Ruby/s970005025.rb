n = gets.to_i
ary = gets.split.map(&:to_i)

sum = ary.inject(:+)
count = 0
ary.each do |i|
  count += i
  sum = [(count * 2 - sum).abs, abs].min
end
puts sum