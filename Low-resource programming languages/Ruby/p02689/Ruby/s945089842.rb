neighbours = Array.new(100001).map { Array.new }
heights = [-1]
n, m = gets.split.map(&:to_i)

gets.split.map(&:to_i).each { |h| heights << h }
m.times do
  l, r = gets.split.map(&:to_i)
  neighbours[l] << heights[r]
  neighbours[r] << heights[l]
end

res = 0
# zp neighbours
1.upto(n) do |i|
  current = heights[i]
  if neighbours[i].empty?|| current > neighbours[i].max
    res += 1 
  end

end

puts res
