n = gets.to_i
as = gets.split.map(&:to_i)

cs = Hash.new(0)
as.each do |a|
  cs[a] += 1
end

ans = Array.new(cs.keys.count + 1, 0)

sum = cs.inject(0) do |r, (_k, v)|
  r + v * (v - 1) / 2
end

as.each do |a|
  puts sum - (cs[a] - 1)
end
