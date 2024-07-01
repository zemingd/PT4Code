n = gets.to_i
a = gets.split.map(&:to_i)
r = []
(1..n).each do |i|
  r << a.index(i)+1
end
puts r.join(' ')