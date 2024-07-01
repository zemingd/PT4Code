a = Array.new(4)
a.each_index do |i|
  a[i] = Array.new(51,0)
end
10.times do |i|
  a[0][i] = 1
end
3.times do |i|
  a[i+1][0] = 1
end

3.times do |i|
  50.times do |j|
    10.times do |k|
      if j+1-k >= 0
        a[i+1][j+1] = a[i+1][j+1] + a[i][j+1-k]
      end
    end
  end
end

while n = gets
  n = n.chomp.to_i
  print a[3][n], "\n"
end