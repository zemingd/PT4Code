n, l = gets.split.map(&:to_i)
apples = Array.new
n.times do |i|
  apples[i] = l + i
end 
min = apples.max < 0 ? apples.max : apples.min
puts (apples.inject(:+) - min)