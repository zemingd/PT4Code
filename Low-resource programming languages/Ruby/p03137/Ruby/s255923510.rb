n, k = gets.strip.split.map(&:to_i)
xs = gets.strip.split.map(&:to_i)

xs.sort!
rs = []
(k-1).times {|i|
  rs << [xs[i], xs[i+1], (xs[i+1]-xs[i]).abs]
}

m = n
(1...rs.length).each {|i|
  if rs[i-1][1] == rs[i][0] then
    m += 1
  end
}
p rs[0..m-1].map{|r| r[2]}.inject(:+) || 0
