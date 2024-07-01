$stdin.gets
a = $stdin.gets.chomp.split(" ").map(&:to_i)
d = Hash.new 0
a.each do |e|
  d[e] += 1
  d[e-1] += 1
  d[e+1] += 1
end
puts d.values.max
