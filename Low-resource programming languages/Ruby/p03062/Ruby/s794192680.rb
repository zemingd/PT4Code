n = gets.to_i
a = gets.split.map(&:to_i)

min = 1000000001

count = 0
a.each do |i|
  count += 1 if i < 0
  min = i.abs if i.abs < min
end

abs_a = a.map(&:abs)
sum = 0
abs_a.each do |i|
  sum += i
end
sum -= min*2 if count%2 == 1

puts sum