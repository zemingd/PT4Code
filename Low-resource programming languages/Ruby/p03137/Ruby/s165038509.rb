n, k = gets.strip.split.map(&:to_i)
xs = gets.strip.split.map(&:to_i)

xs.sort!
rs = []
(k-1).times {|i|
  rs << [xs[i], xs[i+1], (xs[i+1]-xs[i]).abs]
}
rs.sort_by! {|r| r[2]}
p rs[0...(k-n)].map{|r| r[2]}.inject(:+) || 0