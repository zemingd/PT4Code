n, m = gets.split.map(&:to_i)
arr = []

m.times do
 a, b = gets.split.map(%:to_i)
 arr << a
 arr << b
end

n.times do |i|
 puts arr.count(i + 1)
end