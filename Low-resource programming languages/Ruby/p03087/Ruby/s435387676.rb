n,q = gets.split.map(&:to_i)
s = gets.chomp
l = []
r = []
q.times do
  line = gets.split.map(&:to_i)
  l << line.shift
  r << line
end
r.flatten!

x = s.chars
result = []
q.times do |i|
  result << x[(l[i]-1)..(r[i]-1)].join.scan("AC").count
end
puts result