n, m, l = gets.split.map(&:to_i)

a = Array.new(n){Array.new(m, 0)}
b = Array.new(m){Array.new(l, 0)}

n.times do |i|
  a[i] = gets.split.map(&:to_i)
end

m.times do |i|
  b[i] = gets.split.map(&:to_i)
end

n.times do |i|
  str = ""
  l.times do |j|  
    c = 0
    m.times do |k|
      c += a[i][k] * b[k][j]
    end
    str += "#{c} "
  end
  puts str.rstrip
end