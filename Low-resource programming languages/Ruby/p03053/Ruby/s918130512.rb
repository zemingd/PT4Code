h, w = gets.chomp.split.map(&:to_i)
a = []
stack = []
stack[0] = []
h.times do |i|
  a[i] = gets.chomp.split("").map(|b| b == "#" ? 0 : h * w)
  w.times do |j|
    if a[i][j] == 0
      stack[0] << [i, j]
    end
  end
end
k = 0
while stack[k] != []
  l = k+1
  stack[l] = []
  stack[k].each do |i, j|
    if j-1 >= 0 && a[i][j-1] > l
      a[i][j-1] = l
      stack[l] << [i, j-1]
    end
    if i-1 >= 0 && a[i-1][j] > l
      a[i-1][j] = l
      stack[l] << [i-1, j]
    end
    if j+1 <= w-1 && a[i][j+1] > l
      a[i][j+1] = l
      stack[l] << [i, j+1]
    end
    if i+1 <= h-1 && a[i+1][j] > l
      a[i+1][j] = l
      stack[l] << [i+1, j]
    end
  end
  k += 1
end
p k-1