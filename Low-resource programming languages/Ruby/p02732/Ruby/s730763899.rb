def nC2(n)
  n * (n - 1) / 2
end

n = gets.to_i
as = gets.split.map(&:to_i)

cs = as.each_with_object(Hash.new(0)) do |a, h|
  h[a] += 1
end

sum = cs.values.inject(0) do |r, v|
  r + nC2(v)
end

as.each do |a|
  c = cs[a]
  diff = (c - 1) # nC2(c) - nC2(c - 1)

  puts sum - diff
end
