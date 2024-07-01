a = $stdin.read.split("\n")
X = a[0].split(' ')[1].to_i
x = a[1].split(' ').map(&:to_i)
x = (x << X).sort
b = []
x.each_with_index do |xx, i|
  break if i == x.size - 1
  b << (xx - x[i + 1]).abs
end
puts b.min