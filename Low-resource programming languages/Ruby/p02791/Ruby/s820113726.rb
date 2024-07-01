n = gets.to_i
ps = gets.chomp.split.map(&:to_i)
m = []
n.times do |i|
  if i != 0
    m << [m[-1], ps[i]].min
  else
    m << ps[i]
  end
end
puts (0...n).to_a.count {|i| ps[i] == m[i] }