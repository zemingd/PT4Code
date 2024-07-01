n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0
n.times do
  a = gets.split.map(&:to_i)
  count += 1 if a.zip(b).map{|x,y| x * y}.inject(:+) + c > 0
end
puts count