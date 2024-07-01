i = gets.to_i
average,goal = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
g =[]
(0..i-1).each do |n|
  g << (average-array[n]*0.006-goal).abs
end
puts g.index(g.min)+1
