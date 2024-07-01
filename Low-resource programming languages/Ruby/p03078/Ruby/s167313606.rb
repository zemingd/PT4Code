x, y, z, k = gets.split.map(&:to_i)
X = gets.split.map(&:to_i).sort.reverse
Y = gets.split.map(&:to_i).sort.reverse
Z = gets.split.map(&:to_i).sort.reverse
YZ = Y.product(Z).map{|y,z| y + z }.sort.reverse

B = (0 .. X[0] + Y[0] + Z[0]).bsearch do |b|
  found = X.inject(0){|count, x| count + (YZ.bsearch_index{|yz| yz < b - x } || YZ.size) }
  found <= k
end

ANS = []
X.each do |x|
  n = YZ.bsearch_index{|yz| yz < B - x} || YZ.size
  n.times do |i|
    ANS << x + YZ[i]
  end
end
puts ANS.sort.reverse.shift(k)
