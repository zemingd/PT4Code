n, mw = gets.chomp.split.map(&:to_i)
sum = []
sum[0] = []
w, v = gets.chomp.split.map(&:to_i)
(mw + 1).times do |j|
  if j < w
    sum[0][j] = 0
  else
    sum[0][j] = v
  end
end

n.times do |i|
  next if i == 0
  sum[i] = []
  w, v = gets.chomp.split.map(&:to_i)
  (mw + 1).times do |j|
    if j < w
      sum[i][j] = sum[i-1][j]
    else
      sum[i][j] = [sum[i-1][j], sum[i-1][j-w] + v].max
    end
  end
end

puts sum[n-1][mw]