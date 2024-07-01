N,D = gets.split.map(&:to_i)
X = readlines.map {|s| s.split.map(&:to_i) }
c = 0
X.combination(2) do |x|
  n = Math.sqrt(x.transpose.inject(0) {|r,(y,z)| r + (y-z)**2 })
  c += 1 if n.to_s.match(/\.0$/)
end
puts c