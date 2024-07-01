n, m, l = gets.chomp.split(' ').map(&:to_i)

array_a = []
array_b = []
array_c = Array.new(n) { Array.new(l, 0) }
n.times do |i|
  array_a[i] = gets.chomp.split(' ').map(&:to_i)
end
m.times do |j|
  array_b[j] = gets.chomp.split(' ').map(&:to_i)
end

n.times do |i|
  l.times do |j|
    m.times do |k|
      array_c[i][j] += array_a[i][k] * array_b[k][j]
    end
  end
end

array_c.each do |c_row|
  puts c_row.join(' ')
end
