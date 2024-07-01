w, h, n = gets.split().map(&:to_i)
x = Array.new(n)
y = Array.new(n)
a = Array.new(n)
n.times do |i|
  x[i], y[i], a[i] = gets.split().map(&:to_i)
end
s = Array.new(h-1)
h.times do |i|
  s[i] = Array.new(w-1)
  w.times do |j|
    s[i][j] = false
  end
end

n.times do |i|
  case a[i]
  when 1
    j = 0
    k = 0
    while j < h
      k=0
      while k < x[i]
        s[j][k] = true
        k += 1
      end
      j += 1
    end
  when 2
    j = 0
    k = x[i]
    while j < h
      k = x[i]
      while k < w
        s[j][k] = true
        k += 1
      end
      j += 1
    end
  when 3
    j = 0
    k = 0
    while j < y[i]
      k = 0
      while k < w
        s[j][k] = true
        k += 1
      end
      j += 1
    end
  when 4
    j = y[i]
    k = 0
    while j < h
      k = 0
      while k < w
        s[j][k] = true
        k += 1
      end
      j += 1
    end
  end
end

m = 0
h.times do |i|
  w.times do |j|
    if s[i][j] == false
      m += 1
    end
  end
end

puts m
