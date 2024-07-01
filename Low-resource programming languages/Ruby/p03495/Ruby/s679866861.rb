N, K = gets.chomp.split.map(&:to_i)

h = Hash.new { |k, v| k[v] = 0 }
as = gets.chomp.split.map(&:to_i)

as.each do |i|
  h[i] += 1
end
if K >= h.keys.count
  p 0
  exit
end

copy = h.sort_by { |e| e[1] }
i = 0
while K < copy.count
  e = copy.shift
  i += e[1]
end
p i