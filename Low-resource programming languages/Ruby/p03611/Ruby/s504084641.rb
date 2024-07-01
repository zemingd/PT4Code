h = Hash.new 0
n = gets.to_i
as = gets.split.map &:to_i
as.each do |a|
  h[a-1] += 1
  h[a] += 1
  h[a+1] += 1
end

p h.values.max