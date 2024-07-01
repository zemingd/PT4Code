N, M = gets.strip.split.map(&:to_i)

a = []
h = {}

M.times do |i|
  # a = [[P, Y], [Pn, Yn]]
  a << gets.strip.split.map(&:to_i)
  h[a[i][0]] = [] if h[a[i][0]].nil?
  h[a[i][0]] << a[i][1]
end

h.values.each { |v| v.sort! }

a.each do |p, y|
  puts ("%06d" % p) + ("%06d" % (h[p].index(y) + 1))
end
