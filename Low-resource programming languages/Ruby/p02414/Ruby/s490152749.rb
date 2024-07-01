n, m, l = gets.chomp.split.map(&:to_i)

a = []
n.times { a.push(gets.chomp.split.map(&:to_i)) }

b = []
m.times { b.push(gets.chomp.split.map(&:to_i)) }

(0..(n-1)).each do |i|
  c = []
  (0..(l-1)).each do |j|
    x = 0
    (0..(m-1)).each do |k|
      x += a[i][k] * b[k][j]
    end
    c.push x
  end
  puts c.join(" ")
end

