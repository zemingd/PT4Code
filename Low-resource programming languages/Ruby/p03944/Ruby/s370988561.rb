w, h, n = gets.chomp.split.map(&:to_i)
m = []
h.times do |i|
  m[i] = "#" * w
end
n.times do
  x, y, a = gets.chomp.split.map(&:to_i)
  if a == 1
    h.times do |i|
      m[i][0..x-1] = "." * x
    end
  elsif a == 2
    h.times do |i|
      m[i][x..w-1] = "." * (w-x)
    end
  elsif a == 3
    (y-1).times do |i|
      m[i] = "." * w
    end
  elsif a == 4
    (y-1).times do |i|
      m[h-i-1] = "." * w
    end
  end
end
#puts m
cnt = 0
h.times do |i|
  w.times do |j|
    if m[i][j] == "."
      cnt += 1
    end
  end
end
puts cnt
