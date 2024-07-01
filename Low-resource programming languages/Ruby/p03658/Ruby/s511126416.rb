n,k = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)
m = l.sort {|a, b| b <=> a}
max = 0
k.times do |i|
  max += m[i]
end
puts max