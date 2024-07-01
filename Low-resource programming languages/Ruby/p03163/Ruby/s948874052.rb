n, w = gets.chomp.split.map(&:to_i)
a = []
b = []
n.times do |i|
  a[i], b[i] = gets.chomp.split.map(&:to_i)
end

d = Array.new(n+1).map{Array.new(w+1, 0)}
n.times do |i|
  w.times do |j_|
    j = j_ + 1
    if a[i] <= j
      d[i+1][j] = [d[i][j], d[i][j - a[i]] + b[i]].max
    else
      d[i+1][j] = d[i][j]
    end
  end
end

puts d[n][w]