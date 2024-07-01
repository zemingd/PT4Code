N = gets.to_i
XY = Array.new(N){[]}
N.times do |i|
  gets.to_i.times do
    x, y = gets.split.map(&:to_i)
    XY[i] << [x - 1, y == 1]
  end
end

ans = 0
[true, false].repeated_permutation(N) do |a|
  next if a.flat_map.with_index{|t, i| t ? XY[i] : []}.any?{|x, y| a[x] != y}
  ans = [ans, a.count(true)].max
end
puts ans