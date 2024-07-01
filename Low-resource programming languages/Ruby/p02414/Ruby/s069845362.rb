n,m,l = gets.split().map(&:to_i)

a = Array.new()
b = Array.new()
c = Array.new()

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

c.each do |answer|
  puts answer.join(" ")
end

