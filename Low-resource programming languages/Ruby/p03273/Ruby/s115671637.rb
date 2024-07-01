H,W = gets.chomp.split(" ").map(&:to_i)
a = Array.new(H){Array.new(W)}
H.times do |i|
  a[i] = gets.chomp.split("")
end
h = []
w = []
H.times do |i|
  if !a[i].all?(".")
    h << i
  end
end
W.times do |i|
  has = false
  h.each do |j|
    if a[j][i] == "#"
      has = true
    end
  end
  if has
    w << i
  end
end
h.each do |i|
  w.each do |j|
    print a[i][j]
  end
  puts ""
end