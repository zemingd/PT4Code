X = gets.to_i

S = []
X.times do |_|
  S << gets.chomp.to_s
end

h = {}
S.sort.each do |s|
  count = h[s] == nil ? 1 : (h[s] + 1)
  h[s] = count
end

count = h.map do |k, v|
  v
end.max

res = h.select { |k, v| v == count }.map { |k, v| k }
res.sort.each { |r| puts r }
