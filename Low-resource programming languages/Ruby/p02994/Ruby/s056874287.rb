N, L = gets.split.map(&:to_i)

r = []
ra = []

1.upto(N) do |i|
  s = L + i - 1
  r << s
  ra << s.abs
end

r.delete_at(ra.index(ra.min))
p r.inject(:+)
