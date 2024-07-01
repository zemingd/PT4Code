elems = STDIN.read.lines.map { |x| x.split(/\s+/).map(&:to_i) }[1..-1]
min_r, max_l = 10 ** 6, -1
elems.each { |l, r|
  min_r = r if r < min_r
  max_l = l if max_l < l
}
a = min_r - max_l + 1
a = 0 if a < 0
puts a