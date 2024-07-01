n,m = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
abs = m.times.map{ gets.chomp.split(" ").map(&:to_i) }
c = []
0.upto(n-1){|i|
  d = []
  abs.map{|ab|
    if (ab[0] == i+1 && h[i] <= h[ab[1]-1]) || ab[1] == i+1 && h[i] <= h[ab[0]-1]
      d << 0
    end
  }
  if d.index(0)
    c << 0
  else
    c << 1
  end
}
puts c.count(1) || 0