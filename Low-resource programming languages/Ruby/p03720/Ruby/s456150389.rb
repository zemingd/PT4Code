N, M = gets.split.map(&:to_i)
L = Hash.new {|h, x| h[x] = []}
M.times do
  a, b = gets.split.map(&:to_i)
  L[a] << b
  L[b] << a
end

L.keys.sort.each do |k|
  puts L[k].size
end
