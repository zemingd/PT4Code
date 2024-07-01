n = gets.to_i
points = []
n.times do
  points.push gets.split(/\s/).map{|x| x.to_i}
end
result = true
points.each do |point|
  sum = point[1] + point[2]
  cond1 = (point[0].odd? && sum.odd?) || (point[0].even? && sum.even?)
  cond2 = point[0] >= sum
  unless cond1 && cond2
    result = false
    break
  end
end
puts result ? "Yes" : "No"