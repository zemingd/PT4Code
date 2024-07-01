n,m,l=gets.split.map(&:to_i)
a=Array.new(n){ gets.split.map(&:to_i) }
b=Array.new(m){ gets.split.map(&:to_i) }
c=Array.new(n){ Array.new(l) }
n.times do |i|
  l.times do |j|
    c[i][j]=a[i].zip(b.transpose[j]).reduce(0){|s,(x,y)|s+x*y}
  end
end
puts c.map{|l|l*' '}

