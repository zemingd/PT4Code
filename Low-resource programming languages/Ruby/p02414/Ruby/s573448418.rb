n,m,l = gets.split().map(&:to_i)

a = Array.new(n) { Array.new(m) }

b = Array.new(m) { Array.new(l) }

c = Array.new(l) { Array.new(l) }

n.times do |i|
  a[i] = gets.split().map(&:to_i)
end

m.times do |j|
  b[j] = gets.split().map(&:to_i)
end

n.times do |x|
  l.times do |y|
    m.times do |z|
      c[x][y] += a[x][z] * b[z][y]
    end
  end
end

c.each do |g|
  puts g
end
  
