n, m = gets.strip.split.map(&:to_i)
str = ''

m.times do |i|
  str += gets.strip.split.join
end
(1..n).each do |i|
  puts str.count(i.to_s)
end
