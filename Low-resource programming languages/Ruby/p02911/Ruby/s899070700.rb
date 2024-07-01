n,k,q = gets.split.map(&:to_i)

point = []
n.times do |i|
  point[i] = k
end

a = []
q.times do |i|
  a[i] = gets.split[0].to_i
end

q.times do |i|
  point[a[i]-1] += 1
end

n.times do |i|
  if point[i]-q > 0
    point[i] = "Yes"
  else
    point[i] = "No"
  end
end

puts point
