n = gets.to_i
a = [0] + gets.split.map(&:to_i)
r = Hash.new(0)
a.each do |i|
  r[i-1] += 1
end
n.times do |i|
  p r[i].to_i
end
