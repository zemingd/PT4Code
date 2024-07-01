elems = STDIN.read.lines.map { |x| x.split(/\s+/).map(&:to_i) }
n, m = elems.shift
min_r, max_l = 999999, -1
elems.each { |l, r|
  min_r = r if r < min_r
  max_l = l if max_l < l
}
puts min_r - max_l + 1