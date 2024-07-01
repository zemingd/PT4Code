n, m = gets.split.map!(&:to_i)
hgts = gets.split.map!(&:to_i).unshift(nil)

nbrs = Array.new(n + 1) { [] }
m.times do
  a, b = gets.split.map!(&:to_i)
  ha, hb = hgts[a], hgts[b]
  nbrs[a] << b if ha <= hb
  nbrs[b] << a if hb <= ha
end

puts nbrs.drop(1).count(&:empty?)

load __FILE__ unless $stdin.eof?
