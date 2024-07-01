elems = STDIN.read.lines.map { |x| x.split(/\s+/).map(&:to_i) }[1..-1]
a = elems.shift.sort
elems = elems.sort { |x, y| y[1] <=> x[1] }
b, max_c = elems.shift

for i in 0...a.size
  if a[i] < max_c
    b.times { |j| a[i + j] = max_c if a[i + j] < max_c }
    break if elems.size == 0
    b, max_c = elems.shift
    i += b
  end
end
puts a.reduce { |s, x| s + x }