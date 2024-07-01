h,w = gets.chomp.split(" ").map(&:to_i)
a = h.times.map{gets.chomp}
x = Array.new(w,true)
y = Array.new(h,true)
for i in 0..h-1
  y[i] = false if !a[i].index("#")
end
for i in 0..w-1
  f = true
  for j in 0..h-1
    f = false if a[j][i] == "#"
  end
  x[i] = false if f
end
for i in 0..h-1
  next if y[i] == false
  for j in 0..w-1
    print a[i][j] if x[j]
  end
  puts ""
end