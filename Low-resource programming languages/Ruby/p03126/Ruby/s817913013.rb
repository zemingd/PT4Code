n,m =gets.split(' ').map(&:to_i)
h = Array.new(m, 0)
n.times do |i|
  a = gets.split(' ').map(&:to_i)
  a.shift
  a.each {|e| h[e-1] = h[e-1]+1  }
end
p h.select{|s| s == n}.count
