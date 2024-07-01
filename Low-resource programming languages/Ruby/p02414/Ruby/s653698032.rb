n,m,l = gets.split(" ").map(&:to_i)
b = readlines.map{|i| i.chomp.split.map(&:to_i)}
a = b.slice!(0,n)
n.times do |i|
  l.times do |j|
    c = 0
    m.times do |k|
      c += a[i][k]*b[k][j]
    end
    print c
    print ' ' if (j < (l-1))
  end
  puts
end