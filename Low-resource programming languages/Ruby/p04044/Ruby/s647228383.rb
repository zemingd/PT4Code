n,l = gets.strip.split.map(&:to_i)
ss = []
n.times do |i|
  ss[i] = gets.strip
end
ss = ss.sort.join
puts ss