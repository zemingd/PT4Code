h, w = gets.chomp.split(' ').map(&:to_i)
a = []
h.times do |i|
  a << gets.chomp.split('')
end
h.times do |i|
  r = 0
  w.times do |j|
    if a[i][j] == '.' || a[i][j] == '3'
      r += 1
    end
  end
  if r == w
    w.times do |j|
      a[i][j] = '3'
    end
  end
end
w.times do |i|
  c = 0
  h.times do |j|
    if a[j][i] == '.' || a[j][i] == '3'
      c += 1
    end
  end
  if c == h
    h.times do |j|
      a[j][i] = '3'
    end
  end
end

h.times do |i|
  c = 0
  w.times do |j|
    if a[i][j] == '3'
      c += 1
    end
  end
  if c != w
    w.times do |j|
      unless a[i][j] == '3'
        print a[i][j]
      end
    end
    print "\n"
  end
end
