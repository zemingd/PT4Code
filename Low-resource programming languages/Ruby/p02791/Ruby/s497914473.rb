n = gets.to_i
p = gets.split.map(&:to_i)
vmin = n
cnt = 0
n.times do |i|
  vmin = [vmin, p[i]].min
  cnt += 1 if p[i] <= vmin 
end
puts cnt
