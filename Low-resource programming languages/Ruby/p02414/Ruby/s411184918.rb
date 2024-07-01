n,m,l = gets.split(" ").map(&:to_i)
b = readlines.map{|i| i.chomp.split.map(&:to_i)}
a = b.slice!(0,n)
c = Array.new(n).map{Array.new(l,0)}
n.times do |i|
  l.times do |j|
    m.times do |k|
      c[i][j] += a[i][k]*b[k][j]
    end
    print "#{c[i][j]} "
  end
  puts
end