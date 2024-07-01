n,m,l = gets.split.map(&:to_i)
a=Array.new(n,0).map{Array.new(m,0)}
b=Array.new(m,0).map{Array.new(l,0)}
c=Array.new(n,0).map{Array.new(l,0)}
n.times do |i|
  a[i] = gets.split.map(&:to_i)
end
m.times do |i|
  b[i] = gets.split.map(&:to_i)
end

n.times do |i|
  l.times do |j|
    m.times do |k|
      c[i][j]=c[i][j]+a[i][k] * b[k][j]
    end
  end
end

n.times do |i|
  puts c[i].map(&:to_s).join(" ")
end

