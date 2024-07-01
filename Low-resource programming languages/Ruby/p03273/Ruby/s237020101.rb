h, w = gets.chomp.split(' ').map(&:to_i)
a = []
h.times do |i|
  a << gets.chomp.split('')
end
r = []
c = []
h.times do |i|
  w.times do |j|
    if a[i][j] == '#'
      r << i
      break
    end
  end
end
w.times do |j|
  h.times do |i|
    if a[i][j] == '#'
      c << j
      break
    end
  end
end
r.each do |i|
  c.each do |j|
    print a[i][j]
  end
  print "\n"
end
