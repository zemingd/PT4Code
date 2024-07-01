n, w = gets.split.map(&:to_i)
items = Array.new(n+1)
(1..n).each{|i| items[i] = gets.split.map(&:to_i)}
c = Array.new(n+1){Array.new(w+1, 0)}
(1..n).each do |i|
  (1..w).each do |j|
    if items[i][0] <= j && items[i][1] + c[i-1][j-items[i][0]] > c[i-1][j]
      c[i][j] = items[i][1] + c[i-1][j-items[i][0]]
    else
      c[i][j] = c[i-1][j]
    end
  end
end
puts c.last.last
