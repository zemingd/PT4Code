n = gets.to_i
as = gets.split.map(&:to_i)

cnt = Hash.new(0)

bs = n.times.map {|i| [as[i], i]}

as.each do |a|
  cnt[a] += 1
end

total = 0
cnt.each do |k, v|
  total += v * (v - 1) / 2
end


n.times do |i|
  a = as[i]
  c = cnt[a]

#  - c * (c - 1) / 2 + (c - 1) * (c - 2) / 2

  p total - c + 1

end